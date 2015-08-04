structure SExpLexer  = struct

    datatype yystart_state = 
S | INITIAL
    structure UserDeclarations = 
      struct

 
  structure T = SExpTokens
  type lex_result = T.token
  fun eof () = T.EOF
  fun int s = T.INT(valOf(IntInf.fromString s))
  fun float s = T.FLOAT(valOf(LargeReal.fromString s))
(* support for incremental construction of strings *)
  val sbuf : string list ref = ref []
  fun addStr s = sbuf := s :: !sbuf
  fun addUChr lit = let
      (* trim the "\u" prefix *)
	val digits = Substring.triml 2 (Substring.full lit)
	val SOME(w, _) = Word.scan StringCvt.HEX Substring.getc digits
	in
	  addStr(UTF8.encode w)
	end
  fun finishString () = (T.STRING(String.concat(List.rev(!sbuf))) before sbuf := [])


      end

    local
    datatype yymatch 
      = yyNO_MATCH
      | yyMATCH of ULexBuffer.stream * action * yymatch
    withtype action = ULexBuffer.stream * yymatch -> UserDeclarations.lex_result

    val yytable : ((UTF8.wchar * UTF8.wchar * int) list * int list) Vector.vector = 
Vector.fromList []
    fun yystreamify' p input = ULexBuffer.mkStream (p, input)

    fun yystreamifyReader' p readFn strm = let
          val s = ref strm
	  fun iter(strm, n, accum) = 
	        if n > 1024 then (String.implode (rev accum), strm)
		else (case readFn strm
		       of NONE => (String.implode (rev accum), strm)
			| SOME(c, strm') => iter (strm', n+1, c::accum))
          fun input() = let
	        val (data, strm) = iter(!s, 0, [])
	        in
	          s := strm;
		  data
	        end
          in
            yystreamify' p input
          end

    fun yystreamifyInstream' p strm = yystreamify' p (fn ()=>TextIO.input strm)

    fun innerLex 
(yystrm_, yyss_, yysm) = let
        (* current start state *)
          val yyss = ref yyss_
	  fun YYBEGIN ss = (yyss := ss)
	(* current input stream *)
          val yystrm = ref yystrm_
	  fun yysetStrm strm = yystrm := strm
	  fun yygetPos() = ULexBuffer.getpos (!yystrm)
	  fun yystreamify input = yystreamify' (yygetPos()) input
	  fun yystreamifyReader readFn strm = yystreamifyReader' (yygetPos()) readFn strm
	  fun yystreamifyInstream strm = yystreamifyInstream' (yygetPos()) strm
        (* start position of token -- can be updated via skip() *)
	  val yystartPos = ref (yygetPos())
	(* get one char of input *)
	  fun yygetc strm = (case ULexBuffer.getu strm
                of (SOME (0w10, s')) => 
		     (AntlrStreamPos.markNewLine yysm (ULexBuffer.getpos strm);
		      SOME (0w10, s'))
		 | x => x)
          fun yygetList getc strm = let
            val get1 = UTF8.getu getc
            fun iter (strm, accum) = 
	        (case get1 strm
	          of NONE => rev accum
	           | SOME (w, strm') => iter (strm', w::accum)
	         (* end case *))
          in
            iter (strm, [])
          end
	(* create yytext *)
	  fun yymksubstr(strm) = ULexBuffer.subtract (strm, !yystrm)
	  fun yymktext(strm) = Substring.string (yymksubstr strm)
	  fun yymkunicode(strm) = yygetList Substring.getc (yymksubstr strm)
          open UserDeclarations
          fun lex () = let
            fun yystuck (yyNO_MATCH) = raise Fail "lexer reached a stuck state"
	      | yystuck (yyMATCH (strm, action, old)) = 
		  action (strm, old)
	    val yypos = yygetPos()
	    fun yygetlineNo strm = AntlrStreamPos.lineNo yysm (ULexBuffer.getpos strm)
	    fun yygetcolNo  strm = AntlrStreamPos.colNo  yysm (ULexBuffer.getpos strm)
	    fun yyactsToMatches (strm, [],	  oldMatches) = oldMatches
	      | yyactsToMatches (strm, act::acts, oldMatches) = 
		  yyMATCH (strm, act, yyactsToMatches (strm, acts, oldMatches))
	    fun yygo actTable = 
		(fn (~1, _, oldMatches) => yystuck oldMatches
		  | (curState, strm, oldMatches) => let
		      val (transitions, finals') = Vector.sub (yytable, curState)
		      val finals = map (fn i => Vector.sub (actTable, i)) finals'
		      fun tryfinal() = 
		            yystuck (yyactsToMatches (strm, finals, oldMatches))
		      fun find (c, []) = NONE
			| find (c, (c1, c2, s)::ts) = 
		            if c1 <= c andalso c <= c2 then SOME s
			    else find (c, ts)
		      in case yygetc strm
			  of SOME(c, strm') => 
			       (case find (c, transitions)
				 of NONE => tryfinal()
				  | SOME n => 
				      yygo actTable
					(n, strm', 
					 yyactsToMatches (strm, finals, oldMatches)))
			   | NONE => tryfinal()
		      end)
	    val yylastwasnref = ref (ULexBuffer.lastWasNL (!yystrm))
	    fun continue() = let val yylastwasn = !yylastwasnref in
let
fun yyAction0 (strm, lastMatch : yymatch) = (yystrm := strm;   T.WHITE )
fun yyAction1 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.SYMBOL (String.extract(yytext, 1, NONE)) 
      end
fun yyAction2 (strm, lastMatch : yymatch) = (yystrm := strm;
        T.DELIM (T.PAREN, T.OPEN) )
fun yyAction3 (strm, lastMatch : yymatch) = (yystrm := strm;
        T.DELIM (T.PAREN, T.CLOSE) )
fun yyAction4 (strm, lastMatch : yymatch) = (yystrm := strm;
        T.DELIM (T.BRACKET, T.OPEN) )
fun yyAction5 (strm, lastMatch : yymatch) = (yystrm := strm;
        T.DELIM (T.BRACKET, T.CLOSE) )
fun yyAction6 (strm, lastMatch : yymatch) = (yystrm := strm;
        T.DELIM (T.BRACE, T.OPEN) )
fun yyAction7 (strm, lastMatch : yymatch) = (yystrm := strm;
        T.DELIM (T.BRACE, T.CLOSE) )
fun yyAction8 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_true )
fun yyAction9 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_false )
fun yyAction10 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;
          
  let
    (* TODO Doesn't StringCvt.HEX handle stripping the "0x" prefix? *)
    val digits = if String.isPrefix "+"  yytext         (* "+0xdeadbeef" *)
                 then String.extract(yytext, 3, NONE)
                 else if String.isPrefix "-" yytext     (* "-0xdeadbeef" *)
                 then "-" ^ String.extract(yytext, 3, NONE)
                 else String.extract(yytext, 2, NONE)   (* "0xdeadbeef" *)
    val SOME(value) = StringCvt.scanString (IntInf.scan StringCvt.HEX) digits
  in
    T.INT(value) 
  end

      end
fun yyAction11 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.INT(valOf(IntInf.fromString yytext)) 
      end
fun yyAction12 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   float yytext 
      end
fun yyAction13 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   float yytext 
      end
fun yyAction14 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   float yytext 
      end
fun yyAction15 (strm, lastMatch : yymatch) = (yystrm := strm;
        YYBEGIN S; continue() )
fun yyAction16 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.SYMBOL yytext 
      end
fun yyAction17 (strm, lastMatch : yymatch) = (yystrm := strm;
        addStr "\\"; continue() )
fun yyAction18 (strm, lastMatch : yymatch) = (yystrm := strm;
        addStr "\""; continue() )
fun yyAction19 (strm, lastMatch : yymatch) = (yystrm := strm;
        addStr "/"; continue() )
fun yyAction20 (strm, lastMatch : yymatch) = (yystrm := strm;
        addStr "\b"; continue() )
fun yyAction21 (strm, lastMatch : yymatch) = (yystrm := strm;
        addStr "\f"; continue() )
fun yyAction22 (strm, lastMatch : yymatch) = (yystrm := strm;
        addStr "\n"; continue() )
fun yyAction23 (strm, lastMatch : yymatch) = (yystrm := strm;
        addStr "\r"; continue() )
fun yyAction24 (strm, lastMatch : yymatch) = (yystrm := strm;
        addStr "\t"; continue() )
fun yyAction25 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   addUChr yytext; continue() 
      end
fun yyAction26 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   addStr yytext; continue() 
      end
fun yyAction27 (strm, lastMatch : yymatch) = (yystrm := strm;
        YYBEGIN INITIAL; finishString() )
fun yyAction28 (strm, lastMatch : yymatch) = (yystrm := strm;   skip() )
fun yyAction29 (strm, lastMatch : yymatch) = (yystrm := strm;   skip() )
fun yyQ33 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction7(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction7(strm, yyNO_MATCH)
      (* end case *))
fun yyQ32 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction6(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction6(strm, yyNO_MATCH)
      (* end case *))
fun yyQ31 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction5(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction5(strm, yyNO_MATCH)
      (* end case *))
fun yyQ30 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction4(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction4(strm, yyNO_MATCH)
      (* end case *))
fun yyQ38 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction13(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx30
              then yyQ38(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
            else if inp < 0wx30
              then yyAction13(strm, yyNO_MATCH)
            else if inp <= 0wx39
              then yyQ38(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
              else yyAction13(strm, yyNO_MATCH)
      (* end case *))
fun yyQ37 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx30
              then yyQ38(strm', lastMatch)
            else if inp < 0wx30
              then yystuck(lastMatch)
            else if inp <= 0wx39
              then yyQ38(strm', lastMatch)
              else yystuck(lastMatch)
      (* end case *))
fun yyQ36 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx2D
              then yyQ37(strm', lastMatch)
            else if inp < 0wx2D
              then if inp = 0wx2B
                  then yyQ37(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp = 0wx30
              then yyQ38(strm', lastMatch)
            else if inp < 0wx30
              then yystuck(lastMatch)
            else if inp <= 0wx39
              then yyQ38(strm', lastMatch)
              else yystuck(lastMatch)
      (* end case *))
fun yyQ42 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction14(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx30
              then yyQ42(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
            else if inp < 0wx30
              then yyAction14(strm, yyNO_MATCH)
            else if inp <= 0wx39
              then yyQ42(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
              else yyAction14(strm, yyNO_MATCH)
      (* end case *))
fun yyQ41 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx30
              then yyQ42(strm', lastMatch)
            else if inp < 0wx30
              then yystuck(lastMatch)
            else if inp <= 0wx39
              then yyQ42(strm', lastMatch)
              else yystuck(lastMatch)
      (* end case *))
fun yyQ40 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx2D
              then yyQ41(strm', lastMatch)
            else if inp < 0wx2D
              then if inp = 0wx2B
                  then yyQ41(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp = 0wx30
              then yyQ42(strm', lastMatch)
            else if inp < 0wx30
              then yystuck(lastMatch)
            else if inp <= 0wx39
              then yyQ42(strm', lastMatch)
              else yystuck(lastMatch)
      (* end case *))
fun yyQ39 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction12(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx45
              then yyQ40(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
            else if inp < 0wx45
              then if inp = 0wx30
                  then yyQ39(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
                else if inp < 0wx30
                  then yyAction12(strm, yyNO_MATCH)
                else if inp <= 0wx39
                  then yyQ39(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
                  else yyAction12(strm, yyNO_MATCH)
            else if inp = 0wx65
              then yyQ40(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
              else yyAction12(strm, yyNO_MATCH)
      (* end case *))
fun yyQ34 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx30
              then yyQ39(strm', lastMatch)
            else if inp < 0wx30
              then yystuck(lastMatch)
            else if inp <= 0wx39
              then yyQ39(strm', lastMatch)
              else yystuck(lastMatch)
      (* end case *))
fun yyQ35 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction11(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3A
              then yyAction11(strm, yyNO_MATCH)
            else if inp < 0wx3A
              then if inp = 0wx2F
                  then yyAction11(strm, yyNO_MATCH)
                else if inp < 0wx2F
                  then if inp = 0wx2E
                      then yyQ34(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                      else yyAction11(strm, yyNO_MATCH)
                  else yyQ35(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp = 0wx46
              then yyAction11(strm, yyNO_MATCH)
            else if inp < 0wx46
              then if inp = 0wx45
                  then yyQ36(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                  else yyAction11(strm, yyNO_MATCH)
            else if inp = 0wx65
              then yyQ36(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
              else yyAction11(strm, yyNO_MATCH)
      (* end case *))
fun yyQ29 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction11(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3A
              then yyAction11(strm, yyNO_MATCH)
            else if inp < 0wx3A
              then if inp = 0wx2F
                  then yyAction11(strm, yyNO_MATCH)
                else if inp < 0wx2F
                  then if inp = 0wx2E
                      then yyQ34(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                      else yyAction11(strm, yyNO_MATCH)
                  else yyQ35(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp = 0wx46
              then yyAction11(strm, yyNO_MATCH)
            else if inp < 0wx46
              then if inp = 0wx45
                  then yyQ36(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                  else yyAction11(strm, yyNO_MATCH)
            else if inp = 0wx65
              then yyQ36(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
              else yyAction11(strm, yyNO_MATCH)
      (* end case *))
fun yyQ44 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction10(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx41
              then yyQ44(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
            else if inp < 0wx41
              then if inp = 0wx30
                  then yyQ44(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                else if inp < 0wx30
                  then yyAction10(strm, yyNO_MATCH)
                else if inp <= 0wx39
                  then yyQ44(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                  else yyAction10(strm, yyNO_MATCH)
            else if inp = 0wx61
              then yyQ44(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
            else if inp < 0wx61
              then if inp <= 0wx46
                  then yyQ44(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                  else yyAction10(strm, yyNO_MATCH)
            else if inp <= 0wx66
              then yyQ44(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
              else yyAction10(strm, yyNO_MATCH)
      (* end case *))
fun yyQ43 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx41
              then yyQ44(strm', lastMatch)
            else if inp < 0wx41
              then if inp = 0wx30
                  then yyQ44(strm', lastMatch)
                else if inp < 0wx30
                  then yystuck(lastMatch)
                else if inp <= 0wx39
                  then yyQ44(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp = 0wx61
              then yyQ44(strm', lastMatch)
            else if inp < 0wx61
              then if inp <= 0wx46
                  then yyQ44(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp <= 0wx66
              then yyQ44(strm', lastMatch)
              else yystuck(lastMatch)
      (* end case *))
fun yyQ28 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction11(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx46
              then yyAction11(strm, yyNO_MATCH)
            else if inp < 0wx46
              then if inp = 0wx2F
                  then yyAction11(strm, yyNO_MATCH)
                else if inp < 0wx2F
                  then if inp = 0wx2E
                      then yyQ34(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                      else yyAction11(strm, yyNO_MATCH)
                else if inp = 0wx45
                  then yyQ36(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                  else yyAction11(strm, yyNO_MATCH)
            else if inp = 0wx66
              then yyAction11(strm, yyNO_MATCH)
            else if inp < 0wx66
              then if inp = 0wx65
                  then yyQ36(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                  else yyAction11(strm, yyNO_MATCH)
            else if inp = 0wx78
              then yyQ43(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
              else yyAction11(strm, yyNO_MATCH)
      (* end case *))
fun yyQ50 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx2A
              then yyQ53(strm', lastMatch)
              else yyQ50(strm', lastMatch)
      (* end case *))
and yyQ53 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx2A
              then yyQ53(strm', lastMatch)
              else yyQ50(strm', lastMatch)
      (* end case *))
fun yyQ52 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx5B
              then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx5B
              then if inp = 0wx2A
                  then yyQ52(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx22
                      then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx22
                      then if inp = 0wx21
                          then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp = 0wx24
                      then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp <= 0wx27
                      then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx2D
                  then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2D
                  then if inp = 0wx2B
                      then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7B
              then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7B
              then if inp = 0wx5E
                  then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx5E
                  then if inp = 0wx5C
                      then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7E
              then if inp = 0wx7C
                  then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
      (* end case *))
and yyQ51 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx5B
              then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx5B
              then if inp = 0wx2A
                  then yyQ52(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx22
                      then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx22
                      then if inp = 0wx21
                          then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp = 0wx24
                      then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp <= 0wx27
                      then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx2D
                  then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2D
                  then if inp = 0wx2B
                      then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7B
              then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7B
              then if inp = 0wx5E
                  then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx5E
                  then if inp = 0wx5C
                      then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7E
              then if inp = 0wx7C
                  then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
      (* end case *))
fun yyQ49 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx5B
              then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx5B
              then if inp = 0wx2A
                  then yyQ52(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx22
                      then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx22
                      then if inp = 0wx21
                          then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp = 0wx24
                      then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp <= 0wx27
                      then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx2D
                  then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2D
                  then if inp = 0wx2B
                      then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7B
              then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7B
              then if inp = 0wx5E
                  then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx5E
                  then if inp = 0wx5C
                      then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7E
              then if inp = 0wx7C
                  then yyQ51(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyQ50(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
      (* end case *))
fun yyQ55 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction28(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx2A
              then yyQ53(strm', yyMATCH(strm, yyAction28, yyNO_MATCH))
              else yyQ50(strm', yyMATCH(strm, yyAction28, yyNO_MATCH))
      (* end case *))
fun yyQ47 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx2A
              then yyQ54(strm', lastMatch)
              else yyQ47(strm', lastMatch)
      (* end case *))
and yyQ54 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx2B
              then yyQ47(strm', lastMatch)
            else if inp < 0wx2B
              then if inp = 0wx2A
                  then yyQ54(strm', lastMatch)
                  else yyQ47(strm', lastMatch)
            else if inp = 0wx2F
              then yyQ55(strm', lastMatch)
              else yyQ47(strm', lastMatch)
      (* end case *))
fun yyQ46 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx5B
              then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx5B
              then if inp = 0wx2A
                  then yyQ48(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx22
                      then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx22
                      then if inp = 0wx21
                          then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp = 0wx24
                      then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp <= 0wx27
                      then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx2D
                  then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2D
                  then if inp = 0wx2B
                      then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7B
              then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7B
              then if inp = 0wx5E
                  then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx5E
                  then if inp = 0wx5C
                      then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7E
              then if inp = 0wx7C
                  then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
      (* end case *))
and yyQ48 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3C
              then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx3C
              then if inp = 0wx2B
                  then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2B
                  then if inp = 0wx24
                      then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then if inp = 0wx21
                          then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp = 0wx28
                      then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx28
                      then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp = 0wx2A
                      then yyQ48(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx2F
                  then yyQ49(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2F
                  then if inp = 0wx2C
                      then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7D
              then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyQ47(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
      (* end case *))
fun yyQ45 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx5B
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx5B
              then if inp = 0wx2A
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx22
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp < 0wx22
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyAction16(strm, yyNO_MATCH)
                    else if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp <= 0wx27
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyAction16(strm, yyNO_MATCH)
                else if inp = 0wx2D
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2D
                  then if inp = 0wx2C
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7B
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx7B
              then if inp = 0wx5E
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx5E
                  then if inp = 0wx5C
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyAction16(strm, yyNO_MATCH)
                else if inp = 0wx60
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7E
              then if inp = 0wx7C
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyAction16(strm, yyNO_MATCH)
              else yyAction16(strm, yyNO_MATCH)
      (* end case *))
fun yyQ27 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx5B
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx5B
              then if inp = 0wx2A
                  then yyQ46(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx22
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp < 0wx22
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyAction16(strm, yyNO_MATCH)
                    else if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp <= 0wx27
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyAction16(strm, yyNO_MATCH)
                else if inp = 0wx2D
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2D
                  then if inp = 0wx2B
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyAction16(strm, yyNO_MATCH)
                else if inp = 0wx3B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7B
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx7B
              then if inp = 0wx5E
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx5E
                  then if inp = 0wx5C
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyAction16(strm, yyNO_MATCH)
                else if inp = 0wx60
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7E
              then if inp = 0wx7C
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyAction16(strm, yyNO_MATCH)
              else yyAction16(strm, yyNO_MATCH)
      (* end case *))
fun yyQ62 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction13(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3C
              then yyQ45(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
            else if inp < 0wx3C
              then if inp = 0wx2A
                  then yyQ45(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx22
                      then yyAction13(strm, yyNO_MATCH)
                    else if inp < 0wx22
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
                          else yyAction13(strm, yyNO_MATCH)
                    else if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyAction13(strm, yyNO_MATCH)
                    else if inp <= 0wx27
                      then yyQ45(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
                      else yyAction13(strm, yyNO_MATCH)
                else if inp = 0wx30
                  then yyQ62(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
                else if inp < 0wx30
                  then if inp = 0wx2C
                      then yyAction13(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
                else if inp = 0wx3A
                  then yyQ45(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction13(strm, yyNO_MATCH)
                  else yyQ62(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ45(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyAction13(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction13(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction13(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
            else if inp = 0wx7D
              then yyAction13(strm, yyNO_MATCH)
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyAction13(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction13, yyNO_MATCH))
              else yyAction13(strm, yyNO_MATCH)
      (* end case *))
fun yyQ61 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3C
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx3C
              then if inp = 0wx2A
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx22
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp < 0wx22
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyAction16(strm, yyNO_MATCH)
                    else if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp <= 0wx27
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyAction16(strm, yyNO_MATCH)
                else if inp = 0wx30
                  then yyQ62(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx30
                  then if inp = 0wx2C
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3A
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ62(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyAction16(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7D
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyAction16(strm, yyNO_MATCH)
      (* end case *))
fun yyQ60 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3B
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx3B
              then if inp = 0wx2B
                  then yyQ61(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2B
                  then if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyAction16(strm, yyNO_MATCH)
                    else if inp = 0wx28
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp < 0wx28
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp = 0wx2A
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyAction16(strm, yyNO_MATCH)
                else if inp = 0wx2E
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2E
                  then if inp = 0wx2C
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ61(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx30
                  then yyQ62(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx30
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3A
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ62(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyAction16(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7D
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyAction16(strm, yyNO_MATCH)
      (* end case *))
fun yyQ66 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction14(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3C
              then yyQ45(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
            else if inp < 0wx3C
              then if inp = 0wx2A
                  then yyQ45(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx22
                      then yyAction14(strm, yyNO_MATCH)
                    else if inp < 0wx22
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
                          else yyAction14(strm, yyNO_MATCH)
                    else if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyAction14(strm, yyNO_MATCH)
                    else if inp <= 0wx27
                      then yyQ45(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
                      else yyAction14(strm, yyNO_MATCH)
                else if inp = 0wx30
                  then yyQ66(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
                else if inp < 0wx30
                  then if inp = 0wx2C
                      then yyAction14(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
                else if inp = 0wx3A
                  then yyQ45(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction14(strm, yyNO_MATCH)
                  else yyQ66(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ45(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyAction14(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction14(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction14(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
            else if inp = 0wx7D
              then yyAction14(strm, yyNO_MATCH)
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyAction14(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction14, yyNO_MATCH))
              else yyAction14(strm, yyNO_MATCH)
      (* end case *))
fun yyQ65 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3C
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx3C
              then if inp = 0wx2A
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx22
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp < 0wx22
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyAction16(strm, yyNO_MATCH)
                    else if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp <= 0wx27
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyAction16(strm, yyNO_MATCH)
                else if inp = 0wx30
                  then yyQ66(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx30
                  then if inp = 0wx2C
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3A
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ66(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyAction16(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7D
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyAction16(strm, yyNO_MATCH)
      (* end case *))
fun yyQ64 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3B
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx3B
              then if inp = 0wx2B
                  then yyQ65(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2B
                  then if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyAction16(strm, yyNO_MATCH)
                    else if inp = 0wx28
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp < 0wx28
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp = 0wx2A
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyAction16(strm, yyNO_MATCH)
                else if inp = 0wx2E
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2E
                  then if inp = 0wx2C
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ65(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx30
                  then yyQ66(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx30
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3A
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ66(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyAction16(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7D
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyAction16(strm, yyNO_MATCH)
      (* end case *))
fun yyQ63 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction12(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx46
              then yyQ45(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
            else if inp < 0wx46
              then if inp = 0wx2C
                  then yyAction12(strm, yyNO_MATCH)
                else if inp < 0wx2C
                  then if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
                    else if inp < 0wx24
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
                          else yyAction12(strm, yyNO_MATCH)
                    else if inp = 0wx28
                      then yyAction12(strm, yyNO_MATCH)
                    else if inp < 0wx28
                      then yyQ45(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
                    else if inp <= 0wx29
                      then yyAction12(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction12(strm, yyNO_MATCH)
                else if inp < 0wx3B
                  then if inp = 0wx30
                      then yyQ63(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
                    else if inp < 0wx30
                      then yyQ45(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
                    else if inp = 0wx3A
                      then yyQ45(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
                      else yyQ63(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
                else if inp = 0wx45
                  then yyQ64(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
                  else yyQ45(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
            else if inp = 0wx65
              then yyQ64(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
            else if inp < 0wx65
              then if inp = 0wx5D
                  then yyAction12(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction12(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction12(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
            else if inp = 0wx7D
              then yyAction12(strm, yyNO_MATCH)
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyAction12(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction12, yyNO_MATCH))
              else yyAction12(strm, yyNO_MATCH)
      (* end case *))
fun yyQ58 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3C
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx3C
              then if inp = 0wx2A
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx22
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp < 0wx22
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyAction16(strm, yyNO_MATCH)
                    else if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp <= 0wx27
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyAction16(strm, yyNO_MATCH)
                else if inp = 0wx30
                  then yyQ63(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx30
                  then if inp = 0wx2C
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3A
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ63(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyAction16(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7D
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyAction16(strm, yyNO_MATCH)
      (* end case *))
fun yyQ59 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction11(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx45
              then yyQ60(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp < 0wx45
              then if inp = 0wx2D
                  then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp < 0wx2D
                  then if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                    else if inp < 0wx24
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                          else yyAction11(strm, yyNO_MATCH)
                    else if inp = 0wx2A
                      then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                    else if inp < 0wx2A
                      then if inp <= 0wx27
                          then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                          else yyAction11(strm, yyNO_MATCH)
                    else if inp = 0wx2C
                      then yyAction11(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp = 0wx3A
                  then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp < 0wx3A
                  then if inp = 0wx2F
                      then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                    else if inp = 0wx2E
                      then yyQ58(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                      else yyQ59(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction11(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp = 0wx65
              then yyQ60(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp < 0wx65
              then if inp = 0wx5D
                  then yyAction11(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction11(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction11(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp = 0wx7D
              then yyAction11(strm, yyNO_MATCH)
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyAction11(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
              else yyAction11(strm, yyNO_MATCH)
      (* end case *))
fun yyQ57 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction11(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx45
              then yyQ60(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp < 0wx45
              then if inp = 0wx2D
                  then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp < 0wx2D
                  then if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                    else if inp < 0wx24
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                          else yyAction11(strm, yyNO_MATCH)
                    else if inp = 0wx2A
                      then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                    else if inp < 0wx2A
                      then if inp <= 0wx27
                          then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                          else yyAction11(strm, yyNO_MATCH)
                    else if inp = 0wx2C
                      then yyAction11(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp = 0wx3A
                  then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp < 0wx3A
                  then if inp = 0wx2F
                      then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                    else if inp = 0wx2E
                      then yyQ58(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                      else yyQ59(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction11(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp = 0wx65
              then yyQ60(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp < 0wx65
              then if inp = 0wx5D
                  then yyAction11(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction11(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction11(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp = 0wx7D
              then yyAction11(strm, yyNO_MATCH)
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyAction11(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
              else yyAction11(strm, yyNO_MATCH)
      (* end case *))
fun yyQ68 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction10(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx47
              then yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
            else if inp < 0wx47
              then if inp = 0wx2C
                  then yyAction10(strm, yyNO_MATCH)
                else if inp < 0wx2C
                  then if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                    else if inp < 0wx24
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                          else yyAction10(strm, yyNO_MATCH)
                    else if inp = 0wx28
                      then yyAction10(strm, yyNO_MATCH)
                    else if inp < 0wx28
                      then yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                    else if inp <= 0wx29
                      then yyAction10(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction10(strm, yyNO_MATCH)
                else if inp < 0wx3B
                  then if inp = 0wx30
                      then yyQ68(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                    else if inp < 0wx30
                      then yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                    else if inp = 0wx3A
                      then yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                      else yyQ68(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                else if inp <= 0wx40
                  then yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                  else yyQ68(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ68(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyAction10(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction10(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction10(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
            else if inp = 0wx7C
              then yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
            else if inp < 0wx7C
              then if inp = 0wx67
                  then yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                else if inp < 0wx67
                  then yyQ68(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
                else if inp = 0wx7B
                  then yyAction10(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction10, yyNO_MATCH))
              else yyAction10(strm, yyNO_MATCH)
      (* end case *))
fun yyQ67 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx47
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx47
              then if inp = 0wx2C
                  then yyAction16(strm, yyNO_MATCH)
                else if inp < 0wx2C
                  then if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyAction16(strm, yyNO_MATCH)
                    else if inp = 0wx28
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp < 0wx28
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp <= 0wx29
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction16(strm, yyNO_MATCH)
                else if inp < 0wx3B
                  then if inp = 0wx30
                      then yyQ68(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx30
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp = 0wx3A
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ68(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp <= 0wx40
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ68(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ68(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyAction16(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7C
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7C
              then if inp = 0wx67
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx67
                  then yyQ68(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx7B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyAction16(strm, yyNO_MATCH)
      (* end case *))
fun yyQ56 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction11(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx5B
              then yyAction11(strm, yyNO_MATCH)
            else if inp < 0wx5B
              then if inp = 0wx2D
                  then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp < 0wx2D
                  then if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                    else if inp < 0wx24
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                          else yyAction11(strm, yyNO_MATCH)
                    else if inp = 0wx2A
                      then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                    else if inp < 0wx2A
                      then if inp <= 0wx27
                          then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                          else yyAction11(strm, yyNO_MATCH)
                    else if inp = 0wx2C
                      then yyAction11(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp = 0wx3C
                  then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp < 0wx3C
                  then if inp = 0wx2F
                      then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                    else if inp < 0wx2F
                      then yyQ58(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                    else if inp = 0wx3B
                      then yyAction11(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp = 0wx45
                  then yyQ60(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                  else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp = 0wx78
              then yyQ67(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp < 0wx78
              then if inp = 0wx60
                  then yyAction11(strm, yyNO_MATCH)
                else if inp < 0wx60
                  then if inp = 0wx5D
                      then yyAction11(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                else if inp = 0wx65
                  then yyQ60(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
                  else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp = 0wx7D
              then yyAction11(strm, yyNO_MATCH)
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyAction11(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction11, yyNO_MATCH))
              else yyAction11(strm, yyNO_MATCH)
      (* end case *))
fun yyQ26 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3C
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx3C
              then if inp = 0wx2C
                  then yyAction16(strm, yyNO_MATCH)
                else if inp < 0wx2C
                  then if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyAction16(strm, yyNO_MATCH)
                    else if inp = 0wx28
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp < 0wx28
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp <= 0wx29
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx31
                  then yyQ57(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx31
                  then if inp = 0wx30
                      then yyQ56(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3A
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ57(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyAction16(strm, yyNO_MATCH)
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7D
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyAction16(strm, yyNO_MATCH)
      (* end case *))
fun yyQ25 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction3(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction3(strm, yyNO_MATCH)
      (* end case *))
fun yyQ24 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction2(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction2(strm, yyNO_MATCH)
      (* end case *))
fun yyQ69 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction1(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wxD
              then yyAction1(strm, yyNO_MATCH)
            else if inp < 0wxD
              then if inp = 0wx9
                  then yyAction1(strm, yyNO_MATCH)
                else if inp < 0wx9
                  then yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                else if inp <= 0wxA
                  then yyAction1(strm, yyNO_MATCH)
                  else yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
            else if inp = 0wx20
              then yyAction1(strm, yyNO_MATCH)
              else yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
      (* end case *))
fun yyQ70 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction1(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3B
              then yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
            else if inp < 0wx3B
              then if inp = 0wx21
                  then yyQ70(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                else if inp < 0wx21
                  then if inp = 0wxD
                      then yyAction1(strm, yyNO_MATCH)
                    else if inp < 0wxD
                      then if inp = 0wx9
                          then yyAction1(strm, yyNO_MATCH)
                        else if inp < 0wx9
                          then yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                        else if inp <= 0wxA
                          then yyAction1(strm, yyNO_MATCH)
                          else yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                    else if inp = 0wx20
                      then yyAction1(strm, yyNO_MATCH)
                      else yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                else if inp = 0wx2A
                  then yyQ70(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx24
                      then yyQ70(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                    else if inp <= 0wx27
                      then yyQ70(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                      else yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                else if inp = 0wx2C
                  then yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                  else yyQ70(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ70(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                      else yyQ70(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                else if inp = 0wx60
                  then yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                  else yyQ70(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
            else if inp = 0wx7D
              then yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
                  else yyQ70(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ70(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
              else yyQ69(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
      (* end case *))
fun yyQ23 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3B
              then yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx3B
              then if inp = 0wx21
                  then yyQ70(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx21
                  then if inp = 0wxD
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp < 0wxD
                      then if inp = 0wx9
                          then yyAction16(strm, yyNO_MATCH)
                        else if inp < 0wx9
                          then yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                        else if inp <= 0wxA
                          then yyAction16(strm, yyNO_MATCH)
                          else yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp = 0wx20
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx2A
                  then yyQ70(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx24
                      then yyQ70(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp <= 0wx27
                      then yyQ70(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx2C
                  then yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ70(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ70(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx61
              then if inp = 0wx5D
                  then yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx5D
                  then if inp = 0wx5B
                      then yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyQ70(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx60
                  then yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ70(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7D
              then yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7D
              then if inp = 0wx7B
                  then yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyQ70(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ70(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
              else yyQ69(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
      (* end case *))
fun yyQ72 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction8(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction8(strm, yyNO_MATCH)
      (* end case *))
fun yyQ71 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction9(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction9(strm, yyNO_MATCH)
      (* end case *))
fun yyQ22 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction29(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx67
              then yyAction29(strm, yyNO_MATCH)
            else if inp < 0wx67
              then if inp = 0wx66
                  then yyQ71(strm', yyMATCH(strm, yyAction29, yyNO_MATCH))
                  else yyAction29(strm, yyNO_MATCH)
            else if inp = 0wx74
              then yyQ72(strm', yyMATCH(strm, yyAction29, yyNO_MATCH))
              else yyAction29(strm, yyNO_MATCH)
      (* end case *))
fun yyQ21 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction15(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction15(strm, yyNO_MATCH)
      (* end case *))
fun yyQ20 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction16(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx5B
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx5B
              then if inp = 0wx2A
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2A
                  then if inp = 0wx22
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp < 0wx22
                      then if inp = 0wx21
                          then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                          else yyAction16(strm, yyNO_MATCH)
                    else if inp = 0wx24
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                    else if inp < 0wx24
                      then yyAction16(strm, yyNO_MATCH)
                    else if inp <= 0wx27
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyAction16(strm, yyNO_MATCH)
                else if inp = 0wx2D
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx2D
                  then if inp = 0wx2C
                      then yyAction16(strm, yyNO_MATCH)
                      else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp = 0wx3B
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7B
              then yyAction16(strm, yyNO_MATCH)
            else if inp < 0wx7B
              then if inp = 0wx5E
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                else if inp < 0wx5E
                  then if inp = 0wx5C
                      then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                      else yyAction16(strm, yyNO_MATCH)
                else if inp = 0wx60
                  then yyAction16(strm, yyNO_MATCH)
                  else yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp = 0wx7E
              then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
            else if inp < 0wx7E
              then if inp = 0wx7C
                  then yyQ45(strm', yyMATCH(strm, yyAction16, yyNO_MATCH))
                  else yyAction16(strm, yyNO_MATCH)
              else yyAction16(strm, yyNO_MATCH)
      (* end case *))
fun yyQ73 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction0(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx20
              then yyQ73(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
            else if inp < 0wx20
              then if inp = 0wxB
                  then yyAction0(strm, yyNO_MATCH)
                else if inp < 0wxB
                  then if inp <= 0wx8
                      then yyAction0(strm, yyNO_MATCH)
                      else yyQ73(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
                else if inp = 0wxD
                  then yyQ73(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
                  else yyAction0(strm, yyNO_MATCH)
            else if inp = 0wx2D
              then yyAction0(strm, yyNO_MATCH)
            else if inp < 0wx2D
              then if inp = 0wx2C
                  then yyQ73(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
                  else yyAction0(strm, yyNO_MATCH)
            else if inp = 0wx3B
              then yyQ73(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
              else yyAction0(strm, yyNO_MATCH)
      (* end case *))
fun yyQ19 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction0(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx20
              then yyQ73(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
            else if inp < 0wx20
              then if inp = 0wxB
                  then yyAction0(strm, yyNO_MATCH)
                else if inp < 0wxB
                  then if inp <= 0wx8
                      then yyAction0(strm, yyNO_MATCH)
                      else yyQ73(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
                else if inp = 0wxD
                  then yyQ73(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
                  else yyAction0(strm, yyNO_MATCH)
            else if inp = 0wx2D
              then yyAction0(strm, yyNO_MATCH)
            else if inp < 0wx2D
              then if inp = 0wx2C
                  then yyQ73(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
                  else yyAction0(strm, yyNO_MATCH)
            else if inp = 0wx3B
              then yyQ73(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
              else yyAction0(strm, yyNO_MATCH)
      (* end case *))
fun yyQ18 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction29(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction29(strm, yyNO_MATCH)
      (* end case *))
fun yyQ1 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE =>
            if ULexBuffer.eof(!(yystrm))
              then let
                val yycolno = ref(yygetcolNo(!(yystrm)))
                val yylineno = ref(yygetlineNo(!(yystrm)))
                in
                  (case (!(yyss))
                   of _ => (UserDeclarations.eof())
                  (* end case *))
                end
              else yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx2E
              then yyQ20(strm', lastMatch)
            else if inp < 0wx2E
              then if inp = 0wx23
                  then yyQ22(strm', lastMatch)
                else if inp < 0wx23
                  then if inp = 0wxE
                      then yyQ18(strm', lastMatch)
                    else if inp < 0wxE
                      then if inp = 0wxB
                          then yyQ18(strm', lastMatch)
                        else if inp < 0wxB
                          then if inp <= 0wx8
                              then yyQ18(strm', lastMatch)
                              else yyQ19(strm', lastMatch)
                        else if inp = 0wxD
                          then yyQ19(strm', lastMatch)
                          else yyQ18(strm', lastMatch)
                    else if inp = 0wx21
                      then yyQ20(strm', lastMatch)
                    else if inp < 0wx21
                      then if inp = 0wx20
                          then yyQ19(strm', lastMatch)
                          else yyQ18(strm', lastMatch)
                      else yyQ21(strm', lastMatch)
                else if inp = 0wx2A
                  then yyQ20(strm', lastMatch)
                else if inp < 0wx2A
                  then if inp = 0wx28
                      then yyQ24(strm', lastMatch)
                    else if inp < 0wx28
                      then if inp = 0wx27
                          then yyQ23(strm', lastMatch)
                          else yyQ20(strm', lastMatch)
                      else yyQ25(strm', lastMatch)
                else if inp = 0wx2C
                  then yyQ19(strm', lastMatch)
                  else yyQ26(strm', lastMatch)
            else if inp = 0wx5D
              then yyQ31(strm', lastMatch)
            else if inp < 0wx5D
              then if inp = 0wx3B
                  then yyQ19(strm', lastMatch)
                else if inp < 0wx3B
                  then if inp = 0wx31
                      then yyQ29(strm', lastMatch)
                    else if inp < 0wx31
                      then if inp = 0wx2F
                          then yyQ27(strm', lastMatch)
                          else yyQ28(strm', lastMatch)
                    else if inp = 0wx3A
                      then yyQ20(strm', lastMatch)
                      else yyQ29(strm', lastMatch)
                else if inp = 0wx5B
                  then yyQ30(strm', lastMatch)
                  else yyQ20(strm', lastMatch)
            else if inp = 0wx7C
              then yyQ20(strm', lastMatch)
            else if inp < 0wx7C
              then if inp = 0wx61
                  then yyQ20(strm', lastMatch)
                else if inp < 0wx61
                  then if inp = 0wx60
                      then yyQ18(strm', lastMatch)
                      else yyQ20(strm', lastMatch)
                else if inp = 0wx7B
                  then yyQ32(strm', lastMatch)
                  else yyQ20(strm', lastMatch)
            else if inp = 0wx7E
              then yyQ20(strm', lastMatch)
            else if inp = 0wx7D
              then yyQ33(strm', lastMatch)
              else yyQ18(strm', lastMatch)
      (* end case *))
fun yyQ17 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction25(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction25(strm, yyNO_MATCH)
      (* end case *))
fun yyQ16 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx41
              then yyQ17(strm', lastMatch)
            else if inp < 0wx41
              then if inp = 0wx30
                  then yyQ17(strm', lastMatch)
                else if inp < 0wx30
                  then yystuck(lastMatch)
                else if inp <= 0wx39
                  then yyQ17(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp = 0wx61
              then yyQ17(strm', lastMatch)
            else if inp < 0wx61
              then if inp <= 0wx46
                  then yyQ17(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp <= 0wx66
              then yyQ17(strm', lastMatch)
              else yystuck(lastMatch)
      (* end case *))
fun yyQ15 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx41
              then yyQ16(strm', lastMatch)
            else if inp < 0wx41
              then if inp = 0wx30
                  then yyQ16(strm', lastMatch)
                else if inp < 0wx30
                  then yystuck(lastMatch)
                else if inp <= 0wx39
                  then yyQ16(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp = 0wx61
              then yyQ16(strm', lastMatch)
            else if inp < 0wx61
              then if inp <= 0wx46
                  then yyQ16(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp <= 0wx66
              then yyQ16(strm', lastMatch)
              else yystuck(lastMatch)
      (* end case *))
fun yyQ14 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx41
              then yyQ15(strm', lastMatch)
            else if inp < 0wx41
              then if inp = 0wx30
                  then yyQ15(strm', lastMatch)
                else if inp < 0wx30
                  then yystuck(lastMatch)
                else if inp <= 0wx39
                  then yyQ15(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp = 0wx61
              then yyQ15(strm', lastMatch)
            else if inp < 0wx61
              then if inp <= 0wx46
                  then yyQ15(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp <= 0wx66
              then yyQ15(strm', lastMatch)
              else yystuck(lastMatch)
      (* end case *))
fun yyQ13 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx41
              then yyQ14(strm', lastMatch)
            else if inp < 0wx41
              then if inp = 0wx30
                  then yyQ14(strm', lastMatch)
                else if inp < 0wx30
                  then yystuck(lastMatch)
                else if inp <= 0wx39
                  then yyQ14(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp = 0wx61
              then yyQ14(strm', lastMatch)
            else if inp < 0wx61
              then if inp <= 0wx46
                  then yyQ14(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp <= 0wx66
              then yyQ14(strm', lastMatch)
              else yystuck(lastMatch)
      (* end case *))
fun yyQ12 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction24(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction24(strm, yyNO_MATCH)
      (* end case *))
fun yyQ11 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction23(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction23(strm, yyNO_MATCH)
      (* end case *))
fun yyQ10 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction22(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction22(strm, yyNO_MATCH)
      (* end case *))
fun yyQ9 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction21(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction21(strm, yyNO_MATCH)
      (* end case *))
fun yyQ8 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction20(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction20(strm, yyNO_MATCH)
      (* end case *))
fun yyQ7 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction17(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction17(strm, yyNO_MATCH)
      (* end case *))
fun yyQ6 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction19(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction19(strm, yyNO_MATCH)
      (* end case *))
fun yyQ5 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction18(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction18(strm, yyNO_MATCH)
      (* end case *))
fun yyQ4 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx66
              then yyQ9(strm', lastMatch)
            else if inp < 0wx66
              then if inp = 0wx30
                  then yystuck(lastMatch)
                else if inp < 0wx30
                  then if inp = 0wx23
                      then yystuck(lastMatch)
                    else if inp < 0wx23
                      then if inp = 0wx22
                          then yyQ5(strm', lastMatch)
                          else yystuck(lastMatch)
                    else if inp = 0wx2F
                      then yyQ6(strm', lastMatch)
                      else yystuck(lastMatch)
                else if inp = 0wx5D
                  then yystuck(lastMatch)
                else if inp < 0wx5D
                  then if inp = 0wx5C
                      then yyQ7(strm', lastMatch)
                      else yystuck(lastMatch)
                else if inp = 0wx62
                  then yyQ8(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp = 0wx73
              then yystuck(lastMatch)
            else if inp < 0wx73
              then if inp = 0wx6F
                  then yystuck(lastMatch)
                else if inp < 0wx6F
                  then if inp = 0wx6E
                      then yyQ10(strm', lastMatch)
                      else yystuck(lastMatch)
                else if inp = 0wx72
                  then yyQ11(strm', lastMatch)
                  else yystuck(lastMatch)
            else if inp = 0wx75
              then yyQ13(strm', lastMatch)
            else if inp = 0wx74
              then yyQ12(strm', lastMatch)
              else yystuck(lastMatch)
      (* end case *))
fun yyQ3 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction27(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction27(strm, yyNO_MATCH)
      (* end case *))
fun yyQ2 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction26(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx23
              then yyQ2(strm', yyMATCH(strm, yyAction26, yyNO_MATCH))
            else if inp < 0wx23
              then if inp = 0wx22
                  then yyAction26(strm, yyNO_MATCH)
                  else yyQ2(strm', yyMATCH(strm, yyAction26, yyNO_MATCH))
            else if inp = 0wx5C
              then yyAction26(strm, yyNO_MATCH)
              else yyQ2(strm', yyMATCH(strm, yyAction26, yyNO_MATCH))
      (* end case *))
fun yyQ0 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE =>
            if ULexBuffer.eof(!(yystrm))
              then let
                val yycolno = ref(yygetcolNo(!(yystrm)))
                val yylineno = ref(yygetlineNo(!(yystrm)))
                in
                  (case (!(yyss))
                   of _ => (UserDeclarations.eof())
                  (* end case *))
                end
              else yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx23
              then yyQ2(strm', lastMatch)
            else if inp < 0wx23
              then if inp = 0wx22
                  then yyQ3(strm', lastMatch)
                  else yyQ2(strm', lastMatch)
            else if inp = 0wx5C
              then yyQ4(strm', lastMatch)
              else yyQ2(strm', lastMatch)
      (* end case *))
in
  (case (!(yyss))
   of S => yyQ0(!(yystrm), yyNO_MATCH)
    | INITIAL => yyQ1(!(yystrm), yyNO_MATCH)
  (* end case *))
end
end
            and skip() = (yystartPos := yygetPos(); 
			  yylastwasnref := ULexBuffer.lastWasNL (!yystrm);
			  continue())
	    in (continue(), (!yystartPos, yygetPos()), !yystrm, !yyss) end
          in 
            lex()
          end
  in
    type pos = AntlrStreamPos.pos
    type span = AntlrStreamPos.span
    type tok = UserDeclarations.lex_result

    datatype prestrm = STRM of ULexBuffer.stream * 
		(yystart_state * tok * span * prestrm * yystart_state) option ref
    type strm = (prestrm * yystart_state)

    fun lex sm 
(STRM (yystrm, memo), ss) = (case !memo
	  of NONE => let
	     val (tok, span, yystrm', ss') = innerLex 
(yystrm, ss, sm)
	     val strm' = STRM (yystrm', ref NONE);
	     in 
	       memo := SOME (ss, tok, span, strm', ss');
	       (tok, span, (strm', ss'))
	     end
	   | SOME (ss', tok, span, strm', ss'') => 
	       if ss = ss' then
		 (tok, span, (strm', ss''))
	       else (
		 memo := NONE;
		 lex sm 
(STRM (yystrm, memo), ss))
         (* end case *))

    fun streamify input = (STRM (yystreamify' 0 input, ref NONE), INITIAL)
    fun streamifyReader readFn strm = (STRM (yystreamifyReader' 0 readFn strm, ref NONE), 
				       INITIAL)
    fun streamifyInstream strm = (STRM (yystreamifyInstream' 0 strm, ref NONE), 
				  INITIAL)

    fun getPos (STRM (strm, _), _) = ULexBuffer.getpos strm

  end
end
