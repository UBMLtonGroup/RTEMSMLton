/* Copyright (C) 2009-2010,2012 Matthew Fluet.
 * Copyright (C) 1999-2008 Henry Cejtin, Matthew Fluet, Suresh
 *    Jagannathan, and Stephen Weeks.
 * Copyright (C) 1997-2000 NEC Research Institute.
 *
 * MLton is released under a BSD-style license.
 * See the file MLton-LICENSE for details.
 */

void minorGC (GC_state s) {
    minorCheneyCopyGC (s);
}

__attribute__ ((unused)) void majorGC (GC_state s, size_t bytesRequested, bool mayResize) {
  uintmax_t numGCs;
  size_t desiredSize;

  s->lastMajorStatistics.numMinorGCs = 0;
  numGCs =
    s->cumulativeStatistics.numCopyingGCs
    + s->cumulativeStatistics.numMarkCompactGCs;
  if (0 < numGCs
      and ((float)(s->cumulativeStatistics.numHashConsGCs) / (float)(numGCs)
           < s->controls.ratios.hashCons))
    s->hashConsDuringGC = TRUE;
  desiredSize =
    sizeofHeapDesired (s, s->lastMajorStatistics.bytesLive + bytesRequested, 0);
  if (not FORCE_MARK_COMPACT
      and not s->hashConsDuringGC // only markCompact can hash cons
      and s->heap.withMapsSize < s->sysvals.ram
      and (not isHeapInit (&s->secondaryHeap)
           or createHeapSecondary (s, desiredSize)))
    majorCheneyCopyGC (s);
  else
    majorMarkCompactGC (s);
  s->hashConsDuringGC = FALSE;
  s->lastMajorStatistics.bytesLive = s->heap.oldGenSize;
  if (s->lastMajorStatistics.bytesLive > s->cumulativeStatistics.maxBytesLive)
    s->cumulativeStatistics.maxBytesLive = s->lastMajorStatistics.bytesLive;
  /* Notice that the s->lastMajorStatistics.bytesLive below is
   * different than the s->lastMajorStatistics.bytesLive used as an
   * argument to createHeapSecondary above.  Above, it was an
   * estimate.  Here, it is exactly how much was live after the GC.
   */
  if (mayResize) {
    resizeHeap (s, s->lastMajorStatistics.bytesLive + bytesRequested);
  }


  fprintf(stderr, "Collection done\n");

  setCardMapAndCrossMap (s);
  resizeHeapSecondary (s);
  assert (s->heap.oldGenSize + bytesRequested <= s->heap.size);
}

void growStackCurrent (GC_state s) {
  size_t reserved;
  GC_stack stack;

  reserved = sizeofStackGrowReserved (s, getStackCurrent(s));
  if (DEBUG_STACKS or s->controls.messages)
    fprintf (stderr,
             "[GC: Growing stack of size %s bytes to size %s bytes, using %s bytes.]\n",
             uintmaxToCommaString(getStackCurrent(s)->reserved),
             uintmaxToCommaString(reserved),
             uintmaxToCommaString(getStackCurrent(s)->used));
  assert (hasHeapBytesFree (s, sizeofStackWithHeader (s, reserved), 0));
  stack = newStack (s, reserved, TRUE);
  copyStack (s, getStackCurrent(s), stack);
  getThreadCurrent(s)->stack = pointerToObjptr ((pointer)stack, s->heap.start);
  markCard (s, objptrToPointer (getThreadCurrentObjptr(s), s->heap.start));
}

void enterGC (GC_state s) {
  if (s->profiling.isOn) {
    /* We don't need to profileEnter for count profiling because it
     * has already bumped the counter.  If we did allow the bump, then
     * the count would look like function(s) had run an extra time.
     */
    if (s->profiling.stack
        and not (PROFILE_COUNT == s->profiling.kind))
      GC_profileEnter (s);
  }
  s->amInGC = TRUE;
}

void leaveGC (GC_state s) {
  if (s->profiling.isOn) {
    if (s->profiling.stack
        and not (PROFILE_COUNT == s->profiling.kind))
      GC_profileLeave (s);
  }
  s->amInGC = FALSE;
}



void performUMGC(GC_state s,
                 size_t ensureObjectChunksAvailable,
                 size_t ensureArrayChunksAvailable,
                 bool fullGC) {

    if (DEBUG_MEM) {
        fprintf(stderr, "PerformUMGC\n");
        dumpUMHeap(s);
    }


#ifdef PROFILE_UMGC
    long t_start = getCurrentTime();
    fprintf(stderr, "[GC] Free chunk: %d, Free array chunk: %d\n",
            s->fl_chunks,
            s->fl_array_chunks);
#endif

    GC_stack currentStack = getStackCurrent(s);
    foreachGlobalObjptr (s, umDfsMarkObjectsMark);
    foreachObjptrInObject(s, (pointer) currentStack, umDfsMarkObjectsMark, FALSE);

//    foreachGlobalObjptr (s, dfsMarkWithoutHashConsWithLinkWeaks);
//    GC_stack currentStack = getStackCurrent(s);
//    foreachObjptrInObject(s, currentStack,
//                          dfsMarkWithoutHashConsWithLinkWeaks, FALSE);



    pointer pchunk;
    size_t step = sizeof(struct GC_UM_Chunk);
    pointer end = s->umheap.start + s->umheap.size - step;

    //    if (s->umheap.fl_chunks <= 2000) {
    for (pchunk=s->umheap.start;
         pchunk < end;
         pchunk+=step) {
        GC_UM_Chunk pc = (GC_UM_Chunk)pchunk;
        if ((pc->chunk_header & UM_CHUNK_IN_USE) &&
            (!(pc->chunk_header & UM_CHUNK_HEADER_MASK))) {
            if (DEBUG_MEM) {
                fprintf(stderr, "Collecting: "FMTPTR", %d, %d\n",
                        (uintptr_t)pc, pc->sentinel, pc->chunk_header);
            }
            insertFreeChunk(s, &(s->umheap), pchunk);
        }

        if (!fullGC && s->fl_chunks >= ensureObjectChunksAvailable) {
            break;
        }
    }
        //    }

    step = sizeof(struct GC_UM_Array_Chunk);
    end = s->umarheap.start + s->umarheap.size - step;

    for (pchunk=s->umarheap.start;
         pchunk < end;
         pchunk += step) {
        GC_UM_Array_Chunk pc = (GC_UM_Array_Chunk)pchunk;
        if ((pc->array_chunk_header & UM_CHUNK_IN_USE) &&
            (!(pc->array_chunk_header & UM_CHUNK_HEADER_MASK))) {
            if (DEBUG_MEM) {
                fprintf(stderr, "Collecting array: "FMTPTR", %d, %d\n",
                        (uintptr_t)pc, pc->array_chunk_magic,
                        pc->array_chunk_header);
            }
            insertArrayFreeChunk(s, &(s->umarheap), pchunk);
        }

        if (!fullGC &&
            s->fl_array_chunks >= ensureArrayChunksAvailable) {
            fprintf(stderr, "Array chunk ensured\n");
            break;
        }
    }

    foreachObjptrInObject(s, (pointer) currentStack, umDfsMarkObjectsUnMark, FALSE);
    foreachGlobalObjptr (s, umDfsMarkObjectsUnMark);

#ifdef PROFILE_UMGC
    long t_end = getCurrentTime();
    fprintf(stderr, "[GC] Time: %ld, Free chunk: %d, Free array chunk: %d, "
            "ensureArrayChunk: %d\n",
            t_end - t_start,
            s->fl_chunks,
            s->fl_array_chunks,
            ensureArrayChunksAvailable);
#endif

}

void performGC (GC_state s,
                size_t oldGenBytesRequested,
                size_t nurseryBytesRequested,
                bool forceMajor,
                __attribute__ ((unused)) bool mayResize) {
  uintmax_t gcTime;
  bool stackTopOk;
  size_t stackBytesRequested;
  struct rusage ru_start;
  size_t totalBytesRequested;
//  if (s->gc_module == GC_UM) {
//      performUMGC(s);
//	  return;
//  }


  if (s->gc_module == GC_NONE) {
      return;
  }

  enterGC (s);
  s->cumulativeStatistics.numGCs++;
  if (DEBUG or s->controls.messages) {
    size_t nurserySize = s->heap.size - ((size_t)(s->heap.nursery - s->heap.start));
    size_t nurseryUsed = (size_t)(s->frontier - s->heap.nursery);
    fprintf (stderr,
             "[GC: Starting gc #%s; requesting %s nursery bytes and %s old-gen bytes,]\n",
             uintmaxToCommaString(s->cumulativeStatistics.numGCs),
             uintmaxToCommaString(nurseryBytesRequested),
             uintmaxToCommaString(oldGenBytesRequested));
    fprintf (stderr,
             "[GC:\theap at "FMTPTR" of size %s bytes (+ %s bytes card/cross map),]\n",
             (uintptr_t)(s->heap.start),
             uintmaxToCommaString(s->heap.size),
             uintmaxToCommaString(s->heap.withMapsSize - s->heap.size));
    fprintf (stderr,
             "[GC:\twith old-gen of size %s bytes (%.1f%% of heap),]\n",
             uintmaxToCommaString(s->heap.oldGenSize),
             100.0 * ((double)(s->heap.oldGenSize) / (double)(s->heap.size)));
    fprintf (stderr,
             "[GC:\tand nursery of size %s bytes (%.1f%% of heap),]\n",
             uintmaxToCommaString(nurserySize),
             100.0 * ((double)(nurserySize) / (double)(s->heap.size)));
    fprintf (stderr,
             "[GC:\tand nursery using %s bytes (%.1f%% of heap, %.1f%% of nursery).]\n",
             uintmaxToCommaString(nurseryUsed),
             100.0 * ((double)(nurseryUsed) / (double)(s->heap.size)),
             100.0 * ((double)(nurseryUsed) / (double)(nurserySize)));
  }
  assert (invariantForGC (s));
  if (needGCTime (s))
    startTiming (&ru_start);
//  minorGC (s);
  stackTopOk = invariantForMutatorStack (s);
  stackBytesRequested =
    stackTopOk
    ? 0
    : sizeofStackWithHeader (s, sizeofStackGrowReserved (s, getStackCurrent (s)));
  totalBytesRequested =
    oldGenBytesRequested
    + nurseryBytesRequested
    + stackBytesRequested;
  if (forceMajor
      or totalBytesRequested > s->heap.size - s->heap.oldGenSize) {
//    majorGC (s, totalBytesRequested, mayResize);
      performUMGC(s, 3000, 0, true);
  }

  setGCStateCurrentHeap (s, oldGenBytesRequested + stackBytesRequested,
                         nurseryBytesRequested);
  assert (hasHeapBytesFree (s, oldGenBytesRequested + stackBytesRequested,
                            nurseryBytesRequested));
  unless (stackTopOk)
    growStackCurrent (s);
  setGCStateCurrentThreadAndStack (s);
  if (needGCTime (s)) {
    gcTime = stopTiming (&ru_start, &s->cumulativeStatistics.ru_gc);
    s->cumulativeStatistics.maxPauseTime =
      max (s->cumulativeStatistics.maxPauseTime, gcTime);
  } else
    gcTime = 0;  /* Assign gcTime to quell gcc warning. */
  if (DEBUG or s->controls.messages) {
    size_t nurserySize = s->heap.size - (size_t)(s->heap.nursery - s->heap.start);
    fprintf (stderr,
             "[GC: Finished gc #%s; time %s ms,]\n",
             uintmaxToCommaString(s->cumulativeStatistics.numGCs),
             uintmaxToCommaString(gcTime));
    fprintf (stderr,
             "[GC:\theap at "FMTPTR" of size %s bytes (+ %s bytes card/cross map),]\n",
             (uintptr_t)(s->heap.start),
             uintmaxToCommaString(s->heap.size),
             uintmaxToCommaString(s->heap.withMapsSize - s->heap.size));
    fprintf (stderr,
             "[GC:\twith old-gen of size %s bytes (%.1f%% of heap),]\n",
             uintmaxToCommaString(s->heap.oldGenSize),
             100.0 * ((double)(s->heap.oldGenSize) / (double)(s->heap.size)));
    fprintf (stderr,
             "[GC:\tand nursery of size %s bytes (%.1f%% of heap).]\n",
             uintmaxToCommaString(nurserySize),
             100.0 * ((double)(nurserySize) / (double)(s->heap.size)));
  }
  /* Send a GC signal. */
  if (s->signalsInfo.gcSignalHandled
      and s->signalHandlerThread != BOGUS_OBJPTR) {
    if (DEBUG_SIGNALS)
      fprintf (stderr, "GC Signal pending.\n");
    s->signalsInfo.gcSignalPending = TRUE;
    unless (s->signalsInfo.amInSignalHandler)
      s->signalsInfo.signalIsPending = TRUE;
  }
  if (DEBUG)
    displayGCState (s, stderr);
  assert (hasHeapBytesFree (s, oldGenBytesRequested, nurseryBytesRequested));
  assert (invariantForGC (s));
  leaveGC (s);
}


void ensureInvariantForMutator (GC_state s, bool force) {
    force = true;
    performGC (s, 0, getThreadCurrent(s)->bytesNeeded, force, TRUE);

    assert (invariantForMutatorFrontier(s));
    assert (invariantForMutatorStack(s));
}

/* ensureHasHeapBytesFree (s, oldGen, nursery)
 */
void ensureHasHeapBytesFree (GC_state s,
                             size_t oldGenBytesRequested,
                             size_t nurseryBytesRequested) {
  assert (s->heap.nursery <= s->limitPlusSlop);
  assert (s->frontier <= s->limitPlusSlop);
  if (not hasHeapBytesFree (s, oldGenBytesRequested, nurseryBytesRequested))
    performGC (s, oldGenBytesRequested, nurseryBytesRequested, FALSE, TRUE);
  assert (hasHeapBytesFree (s, oldGenBytesRequested, nurseryBytesRequested));
}

void GC_collect_real(GC_state s, size_t bytesRequested, bool force) {
  enter (s);
  /* When the mutator requests zero bytes, it may actually need as
   * much as GC_HEAP_LIMIT_SLOP.
   */
  if (0 == bytesRequested)
    bytesRequested = GC_HEAP_LIMIT_SLOP;
  getThreadCurrent(s)->bytesNeeded = bytesRequested;
  switchToSignalHandlerThreadIfNonAtomicAndSignalPending (s);
  ensureInvariantForMutator (s, force);
  assert (invariantForMutatorFrontier(s));
  assert (invariantForMutatorStack(s));
  leave (s);

  if (DEBUG_MEM) {
      fprintf(stderr, "GC_collect done\n");
  }
}

void GC_collect (GC_state s, size_t bytesRequested, bool force) {
    if (!force) {
        if ((s->fl_chunks > 2000) &&
            (s->fl_array_chunks > 1000000))
            return;
    }

    if (s->gc_module == GC_NONE) {
        return;
    }

    GC_collect_real(s, bytesRequested, true);
}
