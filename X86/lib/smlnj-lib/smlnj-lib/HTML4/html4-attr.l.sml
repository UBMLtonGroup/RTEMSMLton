structure HTML4AttrLexer  = struct

    datatype yystart_state = 
INITIAL
    structure UserDeclarations = 
      struct

 
open HTML4AttrTokens

fun eof() = EOF
type lex_result = token


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
fun yyAction0 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;  NAME (Atom.atom yytext)
      end
fun yyAction1 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;  NUMBER yytext
      end
fun yyAction2 (strm, lastMatch : yymatch) = (yystrm := strm;  DOT)
fun yyAction3 (strm, lastMatch : yymatch) = (yystrm := strm;  DOT)
fun yyAction4 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;  STRINGLIT yytext
      end
fun yyAction5 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;  STRINGLIT yytext
      end
fun yyAction6 (strm, lastMatch : yymatch) = (yystrm := strm;  continue())
fun yyQ7 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction0(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx3A
              then yyAction0(strm, yyNO_MATCH)
            else if inp < 0wx3A
              then if inp = 0wx2E
                  then yyAction0(strm, yyNO_MATCH)
                else if inp < 0wx2E
                  then if inp = 0wx2D
                      then yyQ7(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
                      else yyAction0(strm, yyNO_MATCH)
                else if inp <= 0wx2F
                  then yyAction0(strm, yyNO_MATCH)
                  else yyQ7(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
            else if inp = 0wx5B
              then yyAction0(strm, yyNO_MATCH)
            else if inp < 0wx5B
              then if inp <= 0wx40
                  then yyAction0(strm, yyNO_MATCH)
                  else yyQ7(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
            else if inp = 0wx61
              then yyQ7(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
            else if inp < 0wx61
              then yyAction0(strm, yyNO_MATCH)
            else if inp <= 0wx7A
              then yyQ7(strm', yyMATCH(strm, yyAction0, yyNO_MATCH))
              else yyAction0(strm, yyNO_MATCH)
      (* end case *))
fun yyQ6 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction2(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction2(strm, yyNO_MATCH)
      (* end case *))
fun yyQ5 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction1(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wx30
              then yyQ5(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
            else if inp < 0wx30
              then yyAction1(strm, yyNO_MATCH)
            else if inp <= 0wx39
              then yyQ5(strm', yyMATCH(strm, yyAction1, yyNO_MATCH))
              else yyAction1(strm, yyNO_MATCH)
      (* end case *))
fun yyQ4 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction3(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction3(strm, yyNO_MATCH)
      (* end case *))
fun yyQ8 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction5(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction5(strm, yyNO_MATCH)
      (* end case *))
fun yyQ3 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx27
              then yyQ8(strm', lastMatch)
              else yyQ3(strm', lastMatch)
      (* end case *))
fun yyQ9 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction4(strm, yyNO_MATCH)
        | SOME(inp, strm') => yyAction4(strm, yyNO_MATCH)
      (* end case *))
fun yyQ2 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yystuck(lastMatch)
        | SOME(inp, strm') =>
            if inp = 0wx22
              then yyQ9(strm', lastMatch)
              else yyQ2(strm', lastMatch)
      (* end case *))
fun yyQ1 (strm, lastMatch : yymatch) = (case (yygetc(strm))
       of NONE => yyAction6(strm, yyNO_MATCH)
        | SOME(inp, strm') =>
            if inp = 0wxD
              then yyQ1(strm', yyMATCH(strm, yyAction6, yyNO_MATCH))
            else if inp < 0wxD
              then if inp = 0wx9
                  then yyQ1(strm', yyMATCH(strm, yyAction6, yyNO_MATCH))
                else if inp < 0wx9
                  then yyAction6(strm, yyNO_MATCH)
                else if inp <= 0wxA
                  then yyQ1(strm', yyMATCH(strm, yyAction6, yyNO_MATCH))
                  else yyAction6(strm, yyNO_MATCH)
            else if inp = 0wx20
              then yyQ1(strm', yyMATCH(strm, yyAction6, yyNO_MATCH))
              else yyAction6(strm, yyNO_MATCH)
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
            if inp = 0wx28
              then if ULexBuffer.eof(!(yystrm))
                  then let
                    val yycolno = ref(yygetcolNo(!(yystrm)))
                    val yylineno = ref(yygetlineNo(!(yystrm)))
                    in
                      (case (!(yyss))
                       of _ => (UserDeclarations.eof())
                      (* end case *))
                    end
                  else yystuck(lastMatch)
            else if inp < 0wx28
              then if inp = 0wx20
                  then yyQ1(strm', lastMatch)
                else if inp < 0wx20
                  then if inp = 0wxB
                      then if ULexBuffer.eof(!(yystrm))
                          then let
                            val yycolno = ref(yygetcolNo(!(yystrm)))
                            val yylineno = ref(yygetlineNo(!(yystrm)))
                            in
                              (case (!(yyss))
                               of _ => (UserDeclarations.eof())
                              (* end case *))
                            end
                          else yystuck(lastMatch)
                    else if inp < 0wxB
                      then if inp <= 0wx8
                          then if ULexBuffer.eof(!(yystrm))
                              then let
                                val yycolno = ref(yygetcolNo(!(yystrm)))
                                val yylineno = ref(yygetlineNo(!(yystrm)))
                                in
                                  (case (!(yyss))
                                   of _ => (UserDeclarations.eof())
                                  (* end case *))
                                end
                              else yystuck(lastMatch)
                          else yyQ1(strm', lastMatch)
                    else if inp = 0wxD
                      then yyQ1(strm', lastMatch)
                    else if ULexBuffer.eof(!(yystrm))
                      then let
                        val yycolno = ref(yygetcolNo(!(yystrm)))
                        val yylineno = ref(yygetlineNo(!(yystrm)))
                        in
                          (case (!(yyss))
                           of _ => (UserDeclarations.eof())
                          (* end case *))
                        end
                      else yystuck(lastMatch)
                else if inp = 0wx23
                  then if ULexBuffer.eof(!(yystrm))
                      then let
                        val yycolno = ref(yygetcolNo(!(yystrm)))
                        val yylineno = ref(yygetlineNo(!(yystrm)))
                        in
                          (case (!(yyss))
                           of _ => (UserDeclarations.eof())
                          (* end case *))
                        end
                      else yystuck(lastMatch)
                else if inp < 0wx23
                  then if inp = 0wx21
                      then if ULexBuffer.eof(!(yystrm))
                          then let
                            val yycolno = ref(yygetcolNo(!(yystrm)))
                            val yylineno = ref(yygetlineNo(!(yystrm)))
                            in
                              (case (!(yyss))
                               of _ => (UserDeclarations.eof())
                              (* end case *))
                            end
                          else yystuck(lastMatch)
                      else yyQ2(strm', lastMatch)
                else if inp = 0wx27
                  then yyQ3(strm', lastMatch)
                else if ULexBuffer.eof(!(yystrm))
                  then let
                    val yycolno = ref(yygetcolNo(!(yystrm)))
                    val yylineno = ref(yygetlineNo(!(yystrm)))
                    in
                      (case (!(yyss))
                       of _ => (UserDeclarations.eof())
                      (* end case *))
                    end
                  else yystuck(lastMatch)
            else if inp = 0wx3D
              then yyQ6(strm', lastMatch)
            else if inp < 0wx3D
              then if inp = 0wx2F
                  then if ULexBuffer.eof(!(yystrm))
                      then let
                        val yycolno = ref(yygetcolNo(!(yystrm)))
                        val yylineno = ref(yygetlineNo(!(yystrm)))
                        in
                          (case (!(yyss))
                           of _ => (UserDeclarations.eof())
                          (* end case *))
                        end
                      else yystuck(lastMatch)
                else if inp < 0wx2F
                  then if inp = 0wx2E
                      then yyQ4(strm', lastMatch)
                    else if ULexBuffer.eof(!(yystrm))
                      then let
                        val yycolno = ref(yygetcolNo(!(yystrm)))
                        val yylineno = ref(yygetlineNo(!(yystrm)))
                        in
                          (case (!(yyss))
                           of _ => (UserDeclarations.eof())
                          (* end case *))
                        end
                      else yystuck(lastMatch)
                else if inp <= 0wx39
                  then yyQ5(strm', lastMatch)
                else if ULexBuffer.eof(!(yystrm))
                  then let
                    val yycolno = ref(yygetcolNo(!(yystrm)))
                    val yylineno = ref(yygetlineNo(!(yystrm)))
                    in
                      (case (!(yyss))
                       of _ => (UserDeclarations.eof())
                      (* end case *))
                    end
                  else yystuck(lastMatch)
            else if inp = 0wx5B
              then if ULexBuffer.eof(!(yystrm))
                  then let
                    val yycolno = ref(yygetcolNo(!(yystrm)))
                    val yylineno = ref(yygetlineNo(!(yystrm)))
                    in
                      (case (!(yyss))
                       of _ => (UserDeclarations.eof())
                      (* end case *))
                    end
                  else yystuck(lastMatch)
            else if inp < 0wx5B
              then if inp <= 0wx40
                  then if ULexBuffer.eof(!(yystrm))
                      then let
                        val yycolno = ref(yygetcolNo(!(yystrm)))
                        val yylineno = ref(yygetlineNo(!(yystrm)))
                        in
                          (case (!(yyss))
                           of _ => (UserDeclarations.eof())
                          (* end case *))
                        end
                      else yystuck(lastMatch)
                  else yyQ7(strm', lastMatch)
            else if inp = 0wx61
              then yyQ7(strm', lastMatch)
            else if inp < 0wx61
              then if ULexBuffer.eof(!(yystrm))
                  then let
                    val yycolno = ref(yygetcolNo(!(yystrm)))
                    val yylineno = ref(yygetlineNo(!(yystrm)))
                    in
                      (case (!(yyss))
                       of _ => (UserDeclarations.eof())
                      (* end case *))
                    end
                  else yystuck(lastMatch)
            else if inp <= 0wx7A
              then yyQ7(strm', lastMatch)
            else if ULexBuffer.eof(!(yystrm))
              then let
                val yycolno = ref(yygetcolNo(!(yystrm)))
                val yylineno = ref(yygetlineNo(!(yystrm)))
                in
                  (case (!(yyss))
                   of _ => (UserDeclarations.eof())
                  (* end case *))
                end
              else yystuck(lastMatch)
      (* end case *))
in
  (case (!(yyss))
   of INITIAL => yyQ0(!(yystrm), yyNO_MATCH)
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
