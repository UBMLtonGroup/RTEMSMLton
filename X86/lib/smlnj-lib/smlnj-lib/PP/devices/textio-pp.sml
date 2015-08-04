(* textio-pp.sml
 *
 * COPYRIGHT (c) 1999 Bell Labs, Lucent Technologies.
 *
 * A pretty printer with TextIO output; there are no styles and
 * tokens are atoms.
 *)

structure TextIOPP : sig

    include PP_STREAM
      where type token = string

    val openOut : {dst : TextIO.outstream, wid : int} -> stream

  end = struct

    structure PP = PPStreamFn (
      structure Token = StringToken
      structure Device = SimpleTextIODev)

    open PP

    fun openOut arg = openStream(SimpleTextIODev.openDev arg)

  end;

