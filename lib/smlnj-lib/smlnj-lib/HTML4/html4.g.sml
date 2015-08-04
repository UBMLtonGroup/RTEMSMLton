structure 
HTML4Tokens = struct

    datatype token = EOF
      | ENDVAR
      | STARTVAR of HTML4Utils.tag_payload
      | ENDUL
      | STARTUL of HTML4Utils.tag_payload
      | ENDU
      | STARTU of HTML4Utils.tag_payload
      | ENDTT
      | STARTTT of HTML4Utils.tag_payload
      | ENDTR
      | STARTTR of HTML4Utils.tag_payload
      | ENDTITLE
      | STARTTITLE of HTML4Utils.tag_payload
      | ENDTHEAD
      | STARTTHEAD of HTML4Utils.tag_payload
      | ENDTH
      | STARTTH of HTML4Utils.tag_payload
      | ENDTFOOT
      | STARTTFOOT of HTML4Utils.tag_payload
      | ENDTEXTAREA
      | STARTTEXTAREA of HTML4Utils.tag_payload
      | ENDTD
      | STARTTD of HTML4Utils.tag_payload
      | ENDTBODY
      | STARTTBODY of HTML4Utils.tag_payload
      | ENDTABLE
      | STARTTABLE of HTML4Utils.tag_payload
      | ENDSUP
      | STARTSUP of HTML4Utils.tag_payload
      | ENDSUB
      | STARTSUB of HTML4Utils.tag_payload
      | ENDSTYLE
      | STARTSTYLE of HTML4Utils.tag_payload
      | ENDSTRONG
      | STARTSTRONG of HTML4Utils.tag_payload
      | ENDSTRIKE
      | STARTSTRIKE of HTML4Utils.tag_payload
      | ENDSPAN
      | STARTSPAN of HTML4Utils.tag_payload
      | ENDSMALL
      | STARTSMALL of HTML4Utils.tag_payload
      | ENDSELECT
      | STARTSELECT of HTML4Utils.tag_payload
      | ENDSCRIPT
      | STARTSCRIPT of HTML4Utils.tag_payload
      | ENDSAMP
      | STARTSAMP of HTML4Utils.tag_payload
      | ENDS
      | STARTS of HTML4Utils.tag_payload
      | ENDQ
      | STARTQ of HTML4Utils.tag_payload
      | ENDPRE
      | STARTPRE of HTML4Utils.tag_payload
      | STARTPARAM of HTML4Utils.tag_payload
      | ENDP
      | STARTP of HTML4Utils.tag_payload
      | ENDOPTION
      | STARTOPTION of HTML4Utils.tag_payload
      | ENDOPTGROUP
      | STARTOPTGROUP of HTML4Utils.tag_payload
      | ENDOL
      | STARTOL of HTML4Utils.tag_payload
      | ENDOBJECT
      | STARTOBJECT of HTML4Utils.tag_payload
      | ENDNOSCRIPT
      | STARTNOSCRIPT of HTML4Utils.tag_payload
      | ENDNOFRAMES
      | STARTNOFRAMES of HTML4Utils.tag_payload
      | STARTMETA of HTML4Utils.tag_payload
      | ENDMENU
      | STARTMENU of HTML4Utils.tag_payload
      | ENDMAP
      | STARTMAP of HTML4Utils.tag_payload
      | STARTLINK of HTML4Utils.tag_payload
      | ENDLI
      | STARTLI of HTML4Utils.tag_payload
      | ENDLEGEND
      | STARTLEGEND of HTML4Utils.tag_payload
      | ENDLABEL
      | STARTLABEL of HTML4Utils.tag_payload
      | ENDKBD
      | STARTKBD of HTML4Utils.tag_payload
      | STARTISINDEX of HTML4Utils.tag_payload
      | ENDINS
      | STARTINS of HTML4Utils.tag_payload
      | STARTINPUT of HTML4Utils.tag_payload
      | STARTIMG of HTML4Utils.tag_payload
      | ENDIFRAME
      | STARTIFRAME of HTML4Utils.tag_payload
      | ENDI
      | STARTI of HTML4Utils.tag_payload
      | ENDHTML
      | STARTHTML of HTML4Utils.tag_payload
      | STARTHR of HTML4Utils.tag_payload
      | ENDHEAD
      | STARTHEAD of HTML4Utils.tag_payload
      | ENDH6
      | STARTH6 of HTML4Utils.tag_payload
      | ENDH5
      | STARTH5 of HTML4Utils.tag_payload
      | ENDH4
      | STARTH4 of HTML4Utils.tag_payload
      | ENDH3
      | STARTH3 of HTML4Utils.tag_payload
      | ENDH2
      | STARTH2 of HTML4Utils.tag_payload
      | ENDH1
      | STARTH1 of HTML4Utils.tag_payload
      | ENDFRAMESET
      | STARTFRAMESET of HTML4Utils.tag_payload
      | STARTFRAME of HTML4Utils.tag_payload
      | ENDFORM
      | STARTFORM of HTML4Utils.tag_payload
      | ENDFONT
      | STARTFONT of HTML4Utils.tag_payload
      | ENDFIELDSET
      | STARTFIELDSET of HTML4Utils.tag_payload
      | ENDEM
      | STARTEM of HTML4Utils.tag_payload
      | ENDDT
      | STARTDT of HTML4Utils.tag_payload
      | ENDDL
      | STARTDL of HTML4Utils.tag_payload
      | ENDDIV
      | STARTDIV of HTML4Utils.tag_payload
      | ENDDIR
      | STARTDIR of HTML4Utils.tag_payload
      | ENDDFN
      | STARTDFN of HTML4Utils.tag_payload
      | ENDDEL
      | STARTDEL of HTML4Utils.tag_payload
      | ENDDD
      | STARTDD of HTML4Utils.tag_payload
      | ENDCOLGROUP
      | STARTCOLGROUP of HTML4Utils.tag_payload
      | STARTCOL of HTML4Utils.tag_payload
      | ENDCODE
      | STARTCODE of HTML4Utils.tag_payload
      | ENDCITE
      | STARTCITE of HTML4Utils.tag_payload
      | ENDCENTER
      | STARTCENTER of HTML4Utils.tag_payload
      | ENDCAPTION
      | STARTCAPTION of HTML4Utils.tag_payload
      | ENDBUTTON
      | STARTBUTTON of HTML4Utils.tag_payload
      | STARTBR of HTML4Utils.tag_payload
      | ENDBODY
      | STARTBODY of HTML4Utils.tag_payload
      | ENDBLOCKQUOTE
      | STARTBLOCKQUOTE of HTML4Utils.tag_payload
      | ENDBIG
      | STARTBIG of HTML4Utils.tag_payload
      | ENDBDO
      | STARTBDO of HTML4Utils.tag_payload
      | STARTBASEFONT of HTML4Utils.tag_payload
      | STARTBASE of HTML4Utils.tag_payload
      | ENDB
      | STARTB of HTML4Utils.tag_payload
      | STARTAREA of HTML4Utils.tag_payload
      | ENDAPPLET
      | STARTAPPLET of HTML4Utils.tag_payload
      | ENDADDRESS
      | STARTADDRESS of HTML4Utils.tag_payload
      | ENDACRONYM
      | STARTACRONYM of HTML4Utils.tag_payload
      | ENDABBR
      | STARTABBR of HTML4Utils.tag_payload
      | ENDA
      | STARTA of HTML4Utils.tag_payload
      | XML_PROCESSING of string
      | ENTITY_REF of Atom.atom
      | CHAR_REF of IntInf.int
      | DOCTYPE of string
      | PCDATA of string
      | COMMENT of string
      | CLOSETAG of Atom.atom
      | OPENTAG of Atom.atom * HTML4Utils.tag_payload

    val allToks = [EOF, ENDVAR, ENDUL, ENDU, ENDTT, ENDTR, ENDTITLE, ENDTHEAD, ENDTH, ENDTFOOT, ENDTEXTAREA, ENDTD, ENDTBODY, ENDTABLE, ENDSUP, ENDSUB, ENDSTYLE, ENDSTRONG, ENDSTRIKE, ENDSPAN, ENDSMALL, ENDSELECT, ENDSCRIPT, ENDSAMP, ENDS, ENDQ, ENDPRE, ENDP, ENDOPTION, ENDOPTGROUP, ENDOL, ENDOBJECT, ENDNOSCRIPT, ENDNOFRAMES, ENDMENU, ENDMAP, ENDLI, ENDLEGEND, ENDLABEL, ENDKBD, ENDINS, ENDIFRAME, ENDI, ENDHTML, ENDHEAD, ENDH6, ENDH5, ENDH4, ENDH3, ENDH2, ENDH1, ENDFRAMESET, ENDFORM, ENDFONT, ENDFIELDSET, ENDEM, ENDDT, ENDDL, ENDDIV, ENDDIR, ENDDFN, ENDDEL, ENDDD, ENDCOLGROUP, ENDCODE, ENDCITE, ENDCENTER, ENDCAPTION, ENDBUTTON, ENDBODY, ENDBLOCKQUOTE, ENDBIG, ENDBDO, ENDB, ENDAPPLET, ENDADDRESS, ENDACRONYM, ENDABBR, ENDA]

    fun toString tok =
(case (tok)
 of (EOF) => "EOF"
  | (ENDVAR) => "ENDVAR"
  | (STARTVAR(_)) => "STARTVAR"
  | (ENDUL) => "ENDUL"
  | (STARTUL(_)) => "STARTUL"
  | (ENDU) => "ENDU"
  | (STARTU(_)) => "STARTU"
  | (ENDTT) => "ENDTT"
  | (STARTTT(_)) => "STARTTT"
  | (ENDTR) => "ENDTR"
  | (STARTTR(_)) => "STARTTR"
  | (ENDTITLE) => "ENDTITLE"
  | (STARTTITLE(_)) => "STARTTITLE"
  | (ENDTHEAD) => "ENDTHEAD"
  | (STARTTHEAD(_)) => "STARTTHEAD"
  | (ENDTH) => "ENDTH"
  | (STARTTH(_)) => "STARTTH"
  | (ENDTFOOT) => "ENDTFOOT"
  | (STARTTFOOT(_)) => "STARTTFOOT"
  | (ENDTEXTAREA) => "ENDTEXTAREA"
  | (STARTTEXTAREA(_)) => "STARTTEXTAREA"
  | (ENDTD) => "ENDTD"
  | (STARTTD(_)) => "STARTTD"
  | (ENDTBODY) => "ENDTBODY"
  | (STARTTBODY(_)) => "STARTTBODY"
  | (ENDTABLE) => "ENDTABLE"
  | (STARTTABLE(_)) => "STARTTABLE"
  | (ENDSUP) => "ENDSUP"
  | (STARTSUP(_)) => "STARTSUP"
  | (ENDSUB) => "ENDSUB"
  | (STARTSUB(_)) => "STARTSUB"
  | (ENDSTYLE) => "ENDSTYLE"
  | (STARTSTYLE(_)) => "STARTSTYLE"
  | (ENDSTRONG) => "ENDSTRONG"
  | (STARTSTRONG(_)) => "STARTSTRONG"
  | (ENDSTRIKE) => "ENDSTRIKE"
  | (STARTSTRIKE(_)) => "STARTSTRIKE"
  | (ENDSPAN) => "ENDSPAN"
  | (STARTSPAN(_)) => "STARTSPAN"
  | (ENDSMALL) => "ENDSMALL"
  | (STARTSMALL(_)) => "STARTSMALL"
  | (ENDSELECT) => "ENDSELECT"
  | (STARTSELECT(_)) => "STARTSELECT"
  | (ENDSCRIPT) => "ENDSCRIPT"
  | (STARTSCRIPT(_)) => "STARTSCRIPT"
  | (ENDSAMP) => "ENDSAMP"
  | (STARTSAMP(_)) => "STARTSAMP"
  | (ENDS) => "ENDS"
  | (STARTS(_)) => "STARTS"
  | (ENDQ) => "ENDQ"
  | (STARTQ(_)) => "STARTQ"
  | (ENDPRE) => "ENDPRE"
  | (STARTPRE(_)) => "STARTPRE"
  | (STARTPARAM(_)) => "STARTPARAM"
  | (ENDP) => "ENDP"
  | (STARTP(_)) => "STARTP"
  | (ENDOPTION) => "ENDOPTION"
  | (STARTOPTION(_)) => "STARTOPTION"
  | (ENDOPTGROUP) => "ENDOPTGROUP"
  | (STARTOPTGROUP(_)) => "STARTOPTGROUP"
  | (ENDOL) => "ENDOL"
  | (STARTOL(_)) => "STARTOL"
  | (ENDOBJECT) => "ENDOBJECT"
  | (STARTOBJECT(_)) => "STARTOBJECT"
  | (ENDNOSCRIPT) => "ENDNOSCRIPT"
  | (STARTNOSCRIPT(_)) => "STARTNOSCRIPT"
  | (ENDNOFRAMES) => "ENDNOFRAMES"
  | (STARTNOFRAMES(_)) => "STARTNOFRAMES"
  | (STARTMETA(_)) => "STARTMETA"
  | (ENDMENU) => "ENDMENU"
  | (STARTMENU(_)) => "STARTMENU"
  | (ENDMAP) => "ENDMAP"
  | (STARTMAP(_)) => "STARTMAP"
  | (STARTLINK(_)) => "STARTLINK"
  | (ENDLI) => "ENDLI"
  | (STARTLI(_)) => "STARTLI"
  | (ENDLEGEND) => "ENDLEGEND"
  | (STARTLEGEND(_)) => "STARTLEGEND"
  | (ENDLABEL) => "ENDLABEL"
  | (STARTLABEL(_)) => "STARTLABEL"
  | (ENDKBD) => "ENDKBD"
  | (STARTKBD(_)) => "STARTKBD"
  | (STARTISINDEX(_)) => "STARTISINDEX"
  | (ENDINS) => "ENDINS"
  | (STARTINS(_)) => "STARTINS"
  | (STARTINPUT(_)) => "STARTINPUT"
  | (STARTIMG(_)) => "STARTIMG"
  | (ENDIFRAME) => "ENDIFRAME"
  | (STARTIFRAME(_)) => "STARTIFRAME"
  | (ENDI) => "ENDI"
  | (STARTI(_)) => "STARTI"
  | (ENDHTML) => "ENDHTML"
  | (STARTHTML(_)) => "STARTHTML"
  | (STARTHR(_)) => "STARTHR"
  | (ENDHEAD) => "ENDHEAD"
  | (STARTHEAD(_)) => "STARTHEAD"
  | (ENDH6) => "ENDH6"
  | (STARTH6(_)) => "STARTH6"
  | (ENDH5) => "ENDH5"
  | (STARTH5(_)) => "STARTH5"
  | (ENDH4) => "ENDH4"
  | (STARTH4(_)) => "STARTH4"
  | (ENDH3) => "ENDH3"
  | (STARTH3(_)) => "STARTH3"
  | (ENDH2) => "ENDH2"
  | (STARTH2(_)) => "STARTH2"
  | (ENDH1) => "ENDH1"
  | (STARTH1(_)) => "STARTH1"
  | (ENDFRAMESET) => "ENDFRAMESET"
  | (STARTFRAMESET(_)) => "STARTFRAMESET"
  | (STARTFRAME(_)) => "STARTFRAME"
  | (ENDFORM) => "ENDFORM"
  | (STARTFORM(_)) => "STARTFORM"
  | (ENDFONT) => "ENDFONT"
  | (STARTFONT(_)) => "STARTFONT"
  | (ENDFIELDSET) => "ENDFIELDSET"
  | (STARTFIELDSET(_)) => "STARTFIELDSET"
  | (ENDEM) => "ENDEM"
  | (STARTEM(_)) => "STARTEM"
  | (ENDDT) => "ENDDT"
  | (STARTDT(_)) => "STARTDT"
  | (ENDDL) => "ENDDL"
  | (STARTDL(_)) => "STARTDL"
  | (ENDDIV) => "ENDDIV"
  | (STARTDIV(_)) => "STARTDIV"
  | (ENDDIR) => "ENDDIR"
  | (STARTDIR(_)) => "STARTDIR"
  | (ENDDFN) => "ENDDFN"
  | (STARTDFN(_)) => "STARTDFN"
  | (ENDDEL) => "ENDDEL"
  | (STARTDEL(_)) => "STARTDEL"
  | (ENDDD) => "ENDDD"
  | (STARTDD(_)) => "STARTDD"
  | (ENDCOLGROUP) => "ENDCOLGROUP"
  | (STARTCOLGROUP(_)) => "STARTCOLGROUP"
  | (STARTCOL(_)) => "STARTCOL"
  | (ENDCODE) => "ENDCODE"
  | (STARTCODE(_)) => "STARTCODE"
  | (ENDCITE) => "ENDCITE"
  | (STARTCITE(_)) => "STARTCITE"
  | (ENDCENTER) => "ENDCENTER"
  | (STARTCENTER(_)) => "STARTCENTER"
  | (ENDCAPTION) => "ENDCAPTION"
  | (STARTCAPTION(_)) => "STARTCAPTION"
  | (ENDBUTTON) => "ENDBUTTON"
  | (STARTBUTTON(_)) => "STARTBUTTON"
  | (STARTBR(_)) => "STARTBR"
  | (ENDBODY) => "ENDBODY"
  | (STARTBODY(_)) => "STARTBODY"
  | (ENDBLOCKQUOTE) => "ENDBLOCKQUOTE"
  | (STARTBLOCKQUOTE(_)) => "STARTBLOCKQUOTE"
  | (ENDBIG) => "ENDBIG"
  | (STARTBIG(_)) => "STARTBIG"
  | (ENDBDO) => "ENDBDO"
  | (STARTBDO(_)) => "STARTBDO"
  | (STARTBASEFONT(_)) => "STARTBASEFONT"
  | (STARTBASE(_)) => "STARTBASE"
  | (ENDB) => "ENDB"
  | (STARTB(_)) => "STARTB"
  | (STARTAREA(_)) => "STARTAREA"
  | (ENDAPPLET) => "ENDAPPLET"
  | (STARTAPPLET(_)) => "STARTAPPLET"
  | (ENDADDRESS) => "ENDADDRESS"
  | (STARTADDRESS(_)) => "STARTADDRESS"
  | (ENDACRONYM) => "ENDACRONYM"
  | (STARTACRONYM(_)) => "STARTACRONYM"
  | (ENDABBR) => "ENDABBR"
  | (STARTABBR(_)) => "STARTABBR"
  | (ENDA) => "ENDA"
  | (STARTA(_)) => "STARTA"
  | (XML_PROCESSING(_)) => "XML_PROCESSING"
  | (ENTITY_REF(_)) => "ENTITY_REF"
  | (CHAR_REF(_)) => "CHAR_REF"
  | (DOCTYPE(_)) => "DOCTYPE"
  | (PCDATA(_)) => "PCDATA"
  | (COMMENT(_)) => "COMMENT"
  | (CLOSETAG(_)) => "CLOSETAG"
  | (OPENTAG(_)) => "OPENTAG"
(* end case *))
    fun isKW tok =
(case (tok)
 of (EOF) => false
  | (ENDVAR) => false
  | (STARTVAR(_)) => false
  | (ENDUL) => false
  | (STARTUL(_)) => false
  | (ENDU) => false
  | (STARTU(_)) => false
  | (ENDTT) => false
  | (STARTTT(_)) => false
  | (ENDTR) => false
  | (STARTTR(_)) => false
  | (ENDTITLE) => false
  | (STARTTITLE(_)) => false
  | (ENDTHEAD) => false
  | (STARTTHEAD(_)) => false
  | (ENDTH) => false
  | (STARTTH(_)) => false
  | (ENDTFOOT) => false
  | (STARTTFOOT(_)) => false
  | (ENDTEXTAREA) => false
  | (STARTTEXTAREA(_)) => false
  | (ENDTD) => false
  | (STARTTD(_)) => false
  | (ENDTBODY) => false
  | (STARTTBODY(_)) => false
  | (ENDTABLE) => false
  | (STARTTABLE(_)) => false
  | (ENDSUP) => false
  | (STARTSUP(_)) => false
  | (ENDSUB) => false
  | (STARTSUB(_)) => false
  | (ENDSTYLE) => false
  | (STARTSTYLE(_)) => false
  | (ENDSTRONG) => false
  | (STARTSTRONG(_)) => false
  | (ENDSTRIKE) => false
  | (STARTSTRIKE(_)) => false
  | (ENDSPAN) => false
  | (STARTSPAN(_)) => false
  | (ENDSMALL) => false
  | (STARTSMALL(_)) => false
  | (ENDSELECT) => false
  | (STARTSELECT(_)) => false
  | (ENDSCRIPT) => false
  | (STARTSCRIPT(_)) => false
  | (ENDSAMP) => false
  | (STARTSAMP(_)) => false
  | (ENDS) => false
  | (STARTS(_)) => false
  | (ENDQ) => false
  | (STARTQ(_)) => false
  | (ENDPRE) => false
  | (STARTPRE(_)) => false
  | (STARTPARAM(_)) => false
  | (ENDP) => false
  | (STARTP(_)) => false
  | (ENDOPTION) => false
  | (STARTOPTION(_)) => false
  | (ENDOPTGROUP) => false
  | (STARTOPTGROUP(_)) => false
  | (ENDOL) => false
  | (STARTOL(_)) => false
  | (ENDOBJECT) => false
  | (STARTOBJECT(_)) => false
  | (ENDNOSCRIPT) => false
  | (STARTNOSCRIPT(_)) => false
  | (ENDNOFRAMES) => false
  | (STARTNOFRAMES(_)) => false
  | (STARTMETA(_)) => false
  | (ENDMENU) => false
  | (STARTMENU(_)) => false
  | (ENDMAP) => false
  | (STARTMAP(_)) => false
  | (STARTLINK(_)) => false
  | (ENDLI) => false
  | (STARTLI(_)) => false
  | (ENDLEGEND) => false
  | (STARTLEGEND(_)) => false
  | (ENDLABEL) => false
  | (STARTLABEL(_)) => false
  | (ENDKBD) => false
  | (STARTKBD(_)) => false
  | (STARTISINDEX(_)) => false
  | (ENDINS) => false
  | (STARTINS(_)) => false
  | (STARTINPUT(_)) => false
  | (STARTIMG(_)) => false
  | (ENDIFRAME) => false
  | (STARTIFRAME(_)) => false
  | (ENDI) => false
  | (STARTI(_)) => false
  | (ENDHTML) => false
  | (STARTHTML(_)) => false
  | (STARTHR(_)) => false
  | (ENDHEAD) => false
  | (STARTHEAD(_)) => false
  | (ENDH6) => false
  | (STARTH6(_)) => false
  | (ENDH5) => false
  | (STARTH5(_)) => false
  | (ENDH4) => false
  | (STARTH4(_)) => false
  | (ENDH3) => false
  | (STARTH3(_)) => false
  | (ENDH2) => false
  | (STARTH2(_)) => false
  | (ENDH1) => false
  | (STARTH1(_)) => false
  | (ENDFRAMESET) => false
  | (STARTFRAMESET(_)) => false
  | (STARTFRAME(_)) => false
  | (ENDFORM) => false
  | (STARTFORM(_)) => false
  | (ENDFONT) => false
  | (STARTFONT(_)) => false
  | (ENDFIELDSET) => false
  | (STARTFIELDSET(_)) => false
  | (ENDEM) => false
  | (STARTEM(_)) => false
  | (ENDDT) => false
  | (STARTDT(_)) => false
  | (ENDDL) => false
  | (STARTDL(_)) => false
  | (ENDDIV) => false
  | (STARTDIV(_)) => false
  | (ENDDIR) => false
  | (STARTDIR(_)) => false
  | (ENDDFN) => false
  | (STARTDFN(_)) => false
  | (ENDDEL) => false
  | (STARTDEL(_)) => false
  | (ENDDD) => false
  | (STARTDD(_)) => false
  | (ENDCOLGROUP) => false
  | (STARTCOLGROUP(_)) => false
  | (STARTCOL(_)) => false
  | (ENDCODE) => false
  | (STARTCODE(_)) => false
  | (ENDCITE) => false
  | (STARTCITE(_)) => false
  | (ENDCENTER) => false
  | (STARTCENTER(_)) => false
  | (ENDCAPTION) => false
  | (STARTCAPTION(_)) => false
  | (ENDBUTTON) => false
  | (STARTBUTTON(_)) => false
  | (STARTBR(_)) => false
  | (ENDBODY) => false
  | (STARTBODY(_)) => false
  | (ENDBLOCKQUOTE) => false
  | (STARTBLOCKQUOTE(_)) => false
  | (ENDBIG) => false
  | (STARTBIG(_)) => false
  | (ENDBDO) => false
  | (STARTBDO(_)) => false
  | (STARTBASEFONT(_)) => false
  | (STARTBASE(_)) => false
  | (ENDB) => false
  | (STARTB(_)) => false
  | (STARTAREA(_)) => false
  | (ENDAPPLET) => false
  | (STARTAPPLET(_)) => false
  | (ENDADDRESS) => false
  | (STARTADDRESS(_)) => false
  | (ENDACRONYM) => false
  | (STARTACRONYM(_)) => false
  | (ENDABBR) => false
  | (STARTABBR(_)) => false
  | (ENDA) => false
  | (STARTA(_)) => false
  | (XML_PROCESSING(_)) => false
  | (ENTITY_REF(_)) => false
  | (CHAR_REF(_)) => false
  | (DOCTYPE(_)) => false
  | (PCDATA(_)) => false
  | (COMMENT(_)) => false
  | (CLOSETAG(_)) => false
  | (OPENTAG(_)) => false
(* end case *))


  fun toksToString toks = String.concatWith " " (map toString toks)

  fun isEOF EOF = true
    | isEOF _ = false

end

functor HTML4ParseFn(Lex : ANTLR_LEXER) = struct

  local
    structure Tok = 
HTML4Tokens
    structure UserCode = struct



open HTML4Utils

fun optToList NONE = []
  | optToList (SOME thing) = [thing]

fun optListToList NONE = []
  | optListToList (SOME thing) = thing



fun document_PROD_1_SUBRULE_1_PROD_1_ACT (cdata_opt, DOCTYPE, cdata_opt_SPAN : (Lex.pos * Lex.pos), DOCTYPE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.DOCTYPE DOCTYPE)) :: cdata_opt)
fun document_PROD_1_SUBRULE_2_PROD_1_ACT (SR1, cdata_opt, STARTHTML, SR1_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), STARTHTML_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.STARTHTML STARTHTML)) :: cdata_opt)
fun document_PROD_1_SUBRULE_4_PROD_1_ACT (SR1, SR2, SR3, head, ENDHTML, cdata_opt, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), SR3_SPAN : (Lex.pos * Lex.pos), head_SPAN : (Lex.pos * Lex.pos), ENDHTML_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.ENDHTML)) :: cdata_opt)
fun document_PROD_1_ACT (SR1, SR2, SR3, SR4, head, cdata_opt, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), SR3_SPAN : (Lex.pos * Lex.pos), SR4_SPAN : (Lex.pos * Lex.pos), head_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "document", 
                   cdata_opt @ (optListToList SR1) @ (optListToList SR2) @
                   (head :: SR3 :: (optListToList SR4))))
fun head_PROD_1_SUBRULE_1_PROD_1_ACT (cdata_opt, STARTHEAD, cdata_opt_SPAN : (Lex.pos * Lex.pos), STARTHEAD_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.STARTHEAD STARTHEAD)) :: cdata_opt)
fun head_PROD_1_SUBRULE_2_PROD_1_ACT (SR1, cdata_opt, head_content, SR1_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), head_content_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( head_content :: cdata_opt)
fun head_PROD_1_SUBRULE_3_PROD_1_ACT (SR1, SR2, ENDHEAD, cdata_opt, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), ENDHEAD_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.ENDHEAD)) :: cdata_opt)
fun head_PROD_1_ACT (SR1, SR2, SR3, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), SR3_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "head",
               (optListToList SR1) @ (foldr op@ [] SR2) @ (optListToList SR3)))
fun title_PROD_1_ACT (ENDTITLE, STARTTITLE, cdata_opt, ENDTITLE_SPAN : (Lex.pos * Lex.pos), STARTTITLE_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "title",
                (Lf (Tok.STARTTITLE STARTTITLE)) ::
                (cdata_opt @ [Lf (Tok.ENDTITLE)])))
fun base_PROD_1_ACT (STARTBASE, STARTBASE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "base", [Lf (Tok.STARTBASE STARTBASE)]))
fun script_PROD_1_ACT (STARTSCRIPT, cdata_opt, ENDSCRIPT, STARTSCRIPT_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), ENDSCRIPT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "script",
                 (Lf (Tok.STARTSCRIPT STARTSCRIPT)) ::
                 (cdata_opt @ [Lf (Tok.ENDSCRIPT)])))
fun style_PROD_1_ACT (ENDSTYLE, STARTSTYLE, cdata_opt, ENDSTYLE_SPAN : (Lex.pos * Lex.pos), STARTSTYLE_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "style",
                 (Lf (Tok.STARTSTYLE STARTSTYLE)) ::
                 (cdata_opt @ [Lf (Tok.ENDSTYLE)])))
fun meta_PROD_1_ACT (STARTMETA, STARTMETA_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "meta", [Lf (Tok.STARTMETA STARTMETA)]))
fun link_PROD_1_ACT (STARTLINK, STARTLINK_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "link", [Lf (Tok.STARTLINK STARTLINK)]))
fun object_PROD_1_ACT (SR, STARTOBJECT, ENDOBJECT, SR_SPAN : (Lex.pos * Lex.pos), STARTOBJECT_SPAN : (Lex.pos * Lex.pos), ENDOBJECT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "object",
                 (Lf (Tok.STARTOBJECT STARTOBJECT)) ::
                 (SR @ [Lf (Tok.ENDOBJECT)])))
fun param_PROD_1_ACT (STARTPARAM, STARTPARAM_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "param", [(Lf (Tok.STARTPARAM STARTPARAM))]))
fun body_PROD_1_ACT (body_rest, STARTBODY, body_rest_SPAN : (Lex.pos * Lex.pos), STARTBODY_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "body",
               (Lf (Tok.STARTBODY STARTBODY)) :: body_rest))
fun body_PROD_2_ACT (SR, body_rest, SR_SPAN : (Lex.pos * Lex.pos), body_rest_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "body", SR :: body_rest))
fun body_rest_PROD_1_SUBRULE_2_PROD_1_ACT (SR1, ENDBODY, cdata_opt, SR1_SPAN : (Lex.pos * Lex.pos), ENDBODY_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.ENDBODY)) :: cdata_opt)
fun body_rest_PROD_1_ACT (SR1, SR2, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( SR1 @ (optListToList SR2))
fun a_PROD_1_ACT (ENDA, STARTA, inline, ENDA_SPAN : (Lex.pos * Lex.pos), STARTA_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "a",
                 (Lf (Tok.STARTA STARTA)) :: (inline @ [Lf (Tok.ENDA)])))
fun abbr_PROD_1_ACT (ENDABBR, inline, STARTABBR, ENDABBR_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), STARTABBR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "abbr",
                 (Lf (Tok.STARTABBR STARTABBR)) ::
                 (inline @ [Lf (Tok.ENDABBR)])))
fun acronym_PROD_1_ACT (STARTACRONYM, ENDACRONYM, inline, STARTACRONYM_SPAN : (Lex.pos * Lex.pos), ENDACRONYM_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "acronym",
                 (Lf (Tok.STARTACRONYM STARTACRONYM)) ::
                 (inline @ [Lf (Tok.ENDACRONYM)])))
fun address_PROD_1_ACT (STARTADDRESS, ENDADDRESS, inline, STARTADDRESS_SPAN : (Lex.pos * Lex.pos), ENDADDRESS_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "address",
                 (Lf (Tok.STARTADDRESS STARTADDRESS)) ::
                 (inline @ [Lf (Tok.ENDADDRESS)])))
fun applet_PROD_1_ACT (SR, ENDAPPLET, STARTAPPLET, SR_SPAN : (Lex.pos * Lex.pos), ENDAPPLET_SPAN : (Lex.pos * Lex.pos), STARTAPPLET_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "applet",
                 (Lf (Tok.STARTAPPLET STARTAPPLET)) ::
                 (SR @ [Lf (Tok.ENDAPPLET)])))
fun area_PROD_1_ACT (STARTAREA, STARTAREA_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "area", [Lf (Tok.STARTAREA STARTAREA)]))
fun b_PROD_1_ACT (ENDB, STARTB, inline, ENDB_SPAN : (Lex.pos * Lex.pos), STARTB_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "b",
                 (Lf (Tok.STARTB STARTB)) :: (inline @ [Lf (Tok.ENDB)])))
fun basefont_PROD_1_ACT (STARTBASEFONT, STARTBASEFONT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "basefont", [Lf (Tok.STARTBASEFONT STARTBASEFONT)]))
fun bdo_PROD_1_ACT (STARTBDO, inline, ENDBDO, STARTBDO_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDBDO_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "bdo",
                 (Lf (Tok.STARTBDO STARTBDO)) ::
                 (inline @ [Lf (Tok.ENDBDO)])))
fun big_PROD_1_ACT (STARTBIG, inline, ENDBIG, STARTBIG_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDBIG_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "big",
                 (Lf (Tok.STARTBIG STARTBIG)) ::
                 (inline @ [Lf (Tok.ENDBIG)])))
fun blockquote_PROD_1_ACT (SR, ENDBLOCKQUOTE, STARTBLOCKQUOTE, SR_SPAN : (Lex.pos * Lex.pos), ENDBLOCKQUOTE_SPAN : (Lex.pos * Lex.pos), STARTBLOCKQUOTE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "blockquote",
                 (Lf (Tok.STARTBLOCKQUOTE STARTBLOCKQUOTE)) ::
                 (SR @ [Lf (Tok.ENDBLOCKQUOTE)])))
fun br_PROD_1_ACT (STARTBR, STARTBR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "br", [Lf (Tok.STARTBR STARTBR)]))
fun button_PROD_1_ACT (STARTBUTTON, flow, ENDBUTTON, STARTBUTTON_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), ENDBUTTON_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "button",
                 (Lf (Tok.STARTBUTTON STARTBUTTON)) ::
                 (flow @ [Lf (Tok.ENDBUTTON)])))
fun caption_PROD_1_ACT (STARTCAPTION, inline, ENDCAPTION, STARTCAPTION_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDCAPTION_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "caption",
                  (Lf (Tok.STARTCAPTION STARTCAPTION)) ::
                  (inline @ [Lf (Tok.ENDCAPTION)])))
fun center_PROD_1_ACT (flow, STARTCENTER, ENDCENTER, flow_SPAN : (Lex.pos * Lex.pos), STARTCENTER_SPAN : (Lex.pos * Lex.pos), ENDCENTER_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "center",
                 (Lf (Tok.STARTCENTER STARTCENTER)) ::
                 (flow @ [Lf (Tok.ENDCENTER)])))
fun cite_PROD_1_ACT (ENDCITE, inline, STARTCITE, ENDCITE_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), STARTCITE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "cite",
               (Lf (Tok.STARTCITE STARTCITE)) ::
               (inline @ [Lf (Tok.ENDCITE)])))
fun code_PROD_1_ACT (ENDCODE, inline, STARTCODE, ENDCODE_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), STARTCODE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "code",
               (Lf (Tok.STARTCODE STARTCODE)) ::
               (inline @ [Lf (Tok.ENDCODE)])))
fun col_PROD_1_ACT (STARTCOL, STARTCOL_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "col", [Lf (Tok.STARTCOL STARTCOL)]))
fun colgroup_PROD_1_SUBRULE_1_PROD_1_ACT (col, STARTCOLGROUP, cdata_opt, col_SPAN : (Lex.pos * Lex.pos), STARTCOLGROUP_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( col :: cdata_opt)
fun colgroup_PROD_1_SUBRULE_2_PROD_1_ACT (SR1, STARTCOLGROUP, ENDCOLGROUP, cdata_opt, SR1_SPAN : (Lex.pos * Lex.pos), STARTCOLGROUP_SPAN : (Lex.pos * Lex.pos), ENDCOLGROUP_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Lf (Tok.ENDCOLGROUP))
fun colgroup_PROD_1_ACT (SR1, SR2, STARTCOLGROUP, cdata_opt, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), STARTCOLGROUP_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "colgroup",
                   (Lf (Tok.STARTCOLGROUP STARTCOLGROUP)) ::
                   (cdata_opt @ (foldr op@ [] SR1) @ (optToList SR2))))
fun dd_PROD_1_SUBRULE_2_PROD_1_ACT (STARTDD, flow, ENDDD, STARTDD_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), ENDDD_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Lf (Tok.ENDDD))
fun dd_PROD_1_ACT (SR, STARTDD, flow, SR_SPAN : (Lex.pos * Lex.pos), STARTDD_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "dd",
             (Lf (Tok.STARTDD STARTDD)) :: (flow @ (optToList SR))))
fun del_PROD_1_ACT (flow, STARTDEL, ENDDEL, flow_SPAN : (Lex.pos * Lex.pos), STARTDEL_SPAN : (Lex.pos * Lex.pos), ENDDEL_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "del",
              (Lf (Tok.STARTDEL STARTDEL)) ::
              (flow @ [Lf (Tok.ENDDEL)])))
fun dfn_PROD_1_ACT (STARTDFN, inline, ENDDFN, STARTDFN_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDDFN_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "dfn",
              (Lf (Tok.STARTDFN STARTDFN)) ::
              (inline @ [Lf (Tok.ENDDFN)])))
fun dir_PROD_1_ACT (li, STARTDIR, ENDDIR, cdata_opt, li_SPAN : (Lex.pos * Lex.pos), STARTDIR_SPAN : (Lex.pos * Lex.pos), ENDDIR_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "dir",
              (Lf (Tok.STARTDIR STARTDIR)) ::
              (cdata_opt @ li @ [Lf (Tok.ENDDIR)])))
fun div_PROD_1_ACT (flow, STARTDIV, ENDDIV, flow_SPAN : (Lex.pos * Lex.pos), STARTDIV_SPAN : (Lex.pos * Lex.pos), ENDDIV_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "div",
              (Lf (Tok.STARTDIV STARTDIV)) ::
              (flow @ [Lf (Tok.ENDDIV)])))
fun dl_PROD_1_ACT (SR, STARTDL, ENDDL, cdata_opt, SR_SPAN : (Lex.pos * Lex.pos), STARTDL_SPAN : (Lex.pos * Lex.pos), ENDDL_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "dl",
             (Lf (Tok.STARTDL STARTDL)) ::
             (cdata_opt @ SR @ [Lf (Tok.ENDDL)])))
fun dt_PROD_1_SUBRULE_2_PROD_1_ACT (STARTDT, ENDDT, inline, STARTDT_SPAN : (Lex.pos * Lex.pos), ENDDT_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Lf (Tok.ENDDT))
fun dt_PROD_1_ACT (SR, STARTDT, inline, SR_SPAN : (Lex.pos * Lex.pos), STARTDT_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "dt",
             (Lf (Tok.STARTDT STARTDT)) :: (inline @ (optToList SR))))
fun em_PROD_1_ACT (STARTEM, ENDEM, inline, STARTEM_SPAN : (Lex.pos * Lex.pos), ENDEM_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "em",
             (Lf (Tok.STARTEM STARTEM)) :: (inline @ [Lf (Tok.ENDEM)])))
fun fieldset_PROD_1_ACT (flow, STARTFIELDSET, ENDFIELDSET, legend, cdata_opt, flow_SPAN : (Lex.pos * Lex.pos), STARTFIELDSET_SPAN : (Lex.pos * Lex.pos), ENDFIELDSET_SPAN : (Lex.pos * Lex.pos), legend_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "fieldset",
                   (Lf (Tok.STARTFIELDSET STARTFIELDSET)) ::
                   (cdata_opt @ [legend] @ flow @
                    [Lf (Tok.ENDFIELDSET)])))
fun font_PROD_1_ACT (ENDFONT, inline, STARTFONT, ENDFONT_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), STARTFONT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "font",
               (Lf (Tok.STARTFONT STARTFONT)) ::
               (inline @ [Lf (Tok.ENDFONT)])))
fun form_PROD_1_ACT (SR, ENDFORM, STARTFORM, SR_SPAN : (Lex.pos * Lex.pos), ENDFORM_SPAN : (Lex.pos * Lex.pos), STARTFORM_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "form",
               (Lf (Tok.STARTFORM STARTFORM)) ::
               (SR @ [Lf (Tok.ENDFORM)])))
fun frame_PROD_1_ACT (STARTFRAME, STARTFRAME_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "frame", [Lf (Tok.STARTFRAME STARTFRAME)]))
fun frameset_PROD_1_SUBRULE_2_PROD_1_ACT (SR1, noframes, STARTFRAMESET, cdata_opt, SR1_SPAN : (Lex.pos * Lex.pos), noframes_SPAN : (Lex.pos * Lex.pos), STARTFRAMESET_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( noframes::cdata_opt)
fun frameset_PROD_1_ACT (SR1, SR2, STARTFRAMESET, ENDFRAMESET, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), STARTFRAMESET_SPAN : (Lex.pos * Lex.pos), ENDFRAMESET_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "frameset",
                   (Lf (Tok.STARTFRAMESET STARTFRAMESET)) ::
                   (SR1 @ (optListToList SR2) @ [Lf (Tok.ENDFRAMESET)])))
fun h1_PROD_1_ACT (STARTH1, ENDH1, inline, STARTH1_SPAN : (Lex.pos * Lex.pos), ENDH1_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "h1",
             (Lf (Tok.STARTH1 STARTH1)) :: (inline @ [Lf (Tok.ENDH1)])))
fun h2_PROD_1_ACT (STARTH2, ENDH2, inline, STARTH2_SPAN : (Lex.pos * Lex.pos), ENDH2_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "h2",
             (Lf (Tok.STARTH2 STARTH2)) :: (inline @ [Lf (Tok.ENDH2)])))
fun h3_PROD_1_ACT (STARTH3, ENDH3, inline, STARTH3_SPAN : (Lex.pos * Lex.pos), ENDH3_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "h3",
             (Lf (Tok.STARTH3 STARTH3)) :: (inline @ [Lf (Tok.ENDH3)])))
fun h4_PROD_1_ACT (STARTH4, ENDH4, inline, STARTH4_SPAN : (Lex.pos * Lex.pos), ENDH4_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "h4",
             (Lf (Tok.STARTH4 STARTH4)) :: (inline @ [Lf (Tok.ENDH4)])))
fun h5_PROD_1_ACT (STARTH5, ENDH5, inline, STARTH5_SPAN : (Lex.pos * Lex.pos), ENDH5_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "h5",
             (Lf (Tok.STARTH5 STARTH5)) :: (inline @ [Lf (Tok.ENDH5)])))
fun h6_PROD_1_ACT (STARTH6, ENDH6, inline, STARTH6_SPAN : (Lex.pos * Lex.pos), ENDH6_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "h6",
             (Lf (Tok.STARTH6 STARTH6)) :: (inline @ [Lf (Tok.ENDH6)])))
fun hr_PROD_1_ACT (STARTHR, STARTHR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "hr", [Lf (Tok.STARTHR STARTHR)]))
fun i_PROD_1_ACT (ENDI, STARTI, inline, ENDI_SPAN : (Lex.pos * Lex.pos), STARTI_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "i",
                 (Lf (Tok.STARTI STARTI)) ::
                 (inline @ [Lf (Tok.ENDI)])))
fun iframe_PROD_1_ACT (flow, STARTIFRAME, ENDIFRAME, flow_SPAN : (Lex.pos * Lex.pos), STARTIFRAME_SPAN : (Lex.pos * Lex.pos), ENDIFRAME_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "iframe",
                 (Lf (Tok.STARTIFRAME STARTIFRAME)) ::
                 (flow @ [Lf (Tok.ENDIFRAME)])))
fun img_PROD_1_ACT (STARTIMG, STARTIMG_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "img", [Lf (Tok.STARTIMG STARTIMG)]))
fun input_PROD_1_ACT (STARTINPUT, STARTINPUT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "input", [Lf (Tok.STARTINPUT STARTINPUT)]))
fun ins_PROD_1_ACT (flow, STARTINS, ENDINS, flow_SPAN : (Lex.pos * Lex.pos), STARTINS_SPAN : (Lex.pos * Lex.pos), ENDINS_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "ins",
                 (Lf (Tok.STARTINS STARTINS)) ::
                 (flow @ [Lf (Tok.ENDINS)])))
fun isindex_PROD_1_ACT (STARTISINDEX, STARTISINDEX_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "isindex", [Lf (Tok.STARTISINDEX STARTISINDEX)]))
fun kbd_PROD_1_ACT (STARTKBD, inline, ENDKBD, STARTKBD_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDKBD_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "kbd",
                 (Lf (Tok.STARTKBD STARTKBD)) ::
                 (inline @ [Lf (Tok.ENDKBD)])))
fun label_PROD_1_ACT (ENDLABEL, STARTLABEL, inline, ENDLABEL_SPAN : (Lex.pos * Lex.pos), STARTLABEL_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "label",
                 (Lf (Tok.STARTLABEL STARTLABEL)) ::
                 (inline @ [Lf (Tok.ENDLABEL)])))
fun legend_PROD_1_ACT (STARTLEGEND, inline, ENDLEGEND, STARTLEGEND_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDLEGEND_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "legend",
                 (Lf (Tok.STARTLEGEND STARTLEGEND)) ::
                 (inline @ [Lf (Tok.ENDLEGEND)])))
fun li_PROD_1_SUBRULE_2_PROD_1_ACT (STARTLI, flow, ENDLI, STARTLI_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), ENDLI_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Lf (Tok.ENDLI))
fun li_PROD_1_ACT (SR, STARTLI, flow, SR_SPAN : (Lex.pos * Lex.pos), STARTLI_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "li",
             (Lf (Tok.STARTLI STARTLI)) :: (flow @ (optToList SR))))
fun map_PROD_1_ACT (SR, STARTMAP, ENDMAP, SR_SPAN : (Lex.pos * Lex.pos), STARTMAP_SPAN : (Lex.pos * Lex.pos), ENDMAP_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "map",
              (Lf (Tok.STARTMAP STARTMAP)) :: (SR @ [Lf (Tok.ENDMAP)])))
fun menu_PROD_1_ACT (li, ENDMENU, cdata_opt, STARTMENU, li_SPAN : (Lex.pos * Lex.pos), ENDMENU_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), STARTMENU_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "menu",
               (Lf (Tok.STARTMENU STARTMENU)) ::
               (cdata_opt @ li @ [Lf (Tok.ENDMENU)])))
fun noframes_PROD_1_ACT (body, STARTNOFRAMES, ENDNOFRAMES, body_SPAN : (Lex.pos * Lex.pos), STARTNOFRAMES_SPAN : (Lex.pos * Lex.pos), ENDNOFRAMES_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "noframes",
                   [Lf (Tok.STARTNOFRAMES STARTNOFRAMES), body,
                    Lf (Tok.ENDNOFRAMES)]))
fun noscript_PROD_1_ACT (SR, STARTNOSCRIPT, ENDNOSCRIPT, SR_SPAN : (Lex.pos * Lex.pos), STARTNOSCRIPT_SPAN : (Lex.pos * Lex.pos), ENDNOSCRIPT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "noscript",
                   (Lf (Tok.STARTNOSCRIPT STARTNOSCRIPT)) ::
                   (SR @ [Lf (Tok.ENDNOSCRIPT)])))
fun ol_PROD_1_ACT (li, STARTOL, ENDOL, cdata_opt, li_SPAN : (Lex.pos * Lex.pos), STARTOL_SPAN : (Lex.pos * Lex.pos), ENDOL_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "ol",
             (Lf (Tok.STARTOL STARTOL)) ::
             (cdata_opt @ li @ [Lf (Tok.ENDOL)])))
fun optgroup_PROD_1_ACT (cdata_opt1, cdata_opt2, STARTOPTGROUP, ENDOPTGROUP, option, cdata_opt1_SPAN : (Lex.pos * Lex.pos), cdata_opt2_SPAN : (Lex.pos * Lex.pos), STARTOPTGROUP_SPAN : (Lex.pos * Lex.pos), ENDOPTGROUP_SPAN : (Lex.pos * Lex.pos), option_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "optgroup",
                   (Lf (Tok.STARTOPTGROUP STARTOPTGROUP)) ::
                   (cdata_opt1 @ option @ ((Lf (Tok.ENDOPTGROUP))
                                           :: cdata_opt2))))
fun option_PROD_1_SUBRULE_1_PROD_1_ACT (STARTOPTION, ENDOPTION, cdata_opt, STARTOPTION_SPAN : (Lex.pos * Lex.pos), ENDOPTION_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.ENDOPTION)) ::
                                  cdata_opt)
fun option_PROD_1_ACT (SR, STARTOPTION, cdata_opt, SR_SPAN : (Lex.pos * Lex.pos), STARTOPTION_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "option",
                 (Lf (Tok.STARTOPTION STARTOPTION)) ::
                 (cdata_opt @ (optListToList SR))))
fun p_PROD_1_ACT (ENDP, STARTP, inline, ENDP_SPAN : (Lex.pos * Lex.pos), STARTP_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "p",
            (Lf (Tok.STARTP STARTP)) :: (inline @ [Lf (Tok.ENDP)])))
fun pre_PROD_1_ACT (STARTPRE, inline, ENDPRE, STARTPRE_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDPRE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "pre",
              (Lf (Tok.STARTPRE STARTPRE)) ::
              (inline @ [Lf (Tok.ENDPRE)])))
fun q_PROD_1_ACT (ENDQ, STARTQ, inline, ENDQ_SPAN : (Lex.pos * Lex.pos), STARTQ_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "q",
            (Lf (Tok.STARTQ STARTQ)) :: (inline @ [Lf (Tok.ENDQ)])))
fun s_PROD_1_ACT (ENDS, STARTS, inline, ENDS_SPAN : (Lex.pos * Lex.pos), STARTS_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "s",
            (Lf (Tok.STARTS STARTS)) :: (inline @ [Lf (Tok.ENDS)])))
fun samp_PROD_1_ACT (ENDSAMP, inline, STARTSAMP, ENDSAMP_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), STARTSAMP_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "samp",
               (Lf (Tok.STARTSAMP STARTSAMP)) ::
               (inline @ [Lf (Tok.ENDSAMP)])))
fun select_PROD_1_ACT (SR, STARTSELECT, cdata_opt, ENDSELECT, SR_SPAN : (Lex.pos * Lex.pos), STARTSELECT_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), ENDSELECT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "select",
                 (Lf (Tok.STARTSELECT STARTSELECT)) ::
                 (cdata_opt @ SR @ [Lf (Tok.ENDSELECT)])))
fun small_PROD_1_ACT (ENDSMALL, STARTSMALL, inline, ENDSMALL_SPAN : (Lex.pos * Lex.pos), STARTSMALL_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "small",
                (Lf (Tok.STARTSMALL STARTSMALL)) ::
                (inline @ [Lf (Tok.ENDSMALL)])))
fun span_PROD_1_ACT (ENDSPAN, inline, STARTSPAN, ENDSPAN_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), STARTSPAN_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "span",
               (Lf (Tok.STARTSPAN STARTSPAN)) ::
               (inline @ [Lf (Tok.ENDSPAN)])))
fun strike_PROD_1_ACT (STARTSTRIKE, inline, ENDSTRIKE, STARTSTRIKE_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDSTRIKE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "strike",
                 (Lf (Tok.STARTSTRIKE STARTSTRIKE)) ::
                 (inline @ [Lf (Tok.ENDSTRIKE)])))
fun strong_PROD_1_ACT (STARTSTRONG, inline, ENDSTRONG, STARTSTRONG_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDSTRONG_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "strong",
                 (Lf (Tok.STARTSTRONG STARTSTRONG)) ::
                 (inline @ [Lf (Tok.ENDSTRONG)])))
fun sub_PROD_1_ACT (STARTSUB, inline, ENDSUB, STARTSUB_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDSUB_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "sub",
              (Lf (Tok.STARTSUB STARTSUB)) ::
              (inline @ [Lf (Tok.ENDSUB)])))
fun sup_PROD_1_ACT (STARTSUP, inline, ENDSUP, STARTSUP_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDSUP_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "sup",
              (Lf (Tok.STARTSUP STARTSUP)) ::
              (inline @ [Lf (Tok.ENDSUP)])))
fun table_PROD_1_SUBRULE_1_PROD_1_ACT (STARTTABLE, cdata_opt, caption, STARTTABLE_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), caption_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( caption :: cdata_opt)
fun table_PROD_1_ACT (SR, ENDTABLE, STARTTABLE, col_or_colgroups, table_content, cdata_opt, SR_SPAN : (Lex.pos * Lex.pos), ENDTABLE_SPAN : (Lex.pos * Lex.pos), STARTTABLE_SPAN : (Lex.pos * Lex.pos), col_or_colgroups_SPAN : (Lex.pos * Lex.pos), table_content_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "table",
                (Lf (Tok.STARTTABLE STARTTABLE)) ::
                (cdata_opt @ (optListToList SR) @ col_or_colgroups @
                 table_content @ [Lf (Tok.ENDTABLE)])))
fun table_content_PROD_1_ACT (tbodies, tfoot, thead, tbodies_SPAN : (Lex.pos * Lex.pos), tfoot_SPAN : (Lex.pos * Lex.pos), thead_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( thead :: ((optToList tfoot)) @ tbodies)
fun table_content_PROD_2_ACT (tbodies, tfoot, tbodies_SPAN : (Lex.pos * Lex.pos), tfoot_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( tfoot :: tbodies)
fun col_or_colgroups_PROD_1_ACT (FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( [])
fun col_or_colgroups_PROD_2_SUBRULE_1_PROD_1_ACT (col, cdata_opt, col_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( col :: cdata_opt)
fun col_or_colgroups_PROD_2_ACT (SR, SR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( foldr op@ [] SR)
fun tbodies_nostart_PROD_1_SUBRULE_1_PROD_1_ACT (STARTTBODY, cdata_opt, STARTTBODY_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  (
                   (Lf (Tok.STARTTBODY STARTTBODY)) :: cdata_opt)
fun tbodies_nostart_PROD_1_ACT (SR, tr, tbodies_rest, SR_SPAN : (Lex.pos * Lex.pos), tr_SPAN : (Lex.pos * Lex.pos), tbodies_rest_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( let val (tbody_rest, tbody_peers) =
                              case tbodies_rest of
                                  NONE => ([], [])
                                | SOME tbodies_tup => tbodies_tup
                      in (Nd (Atom.atom "tbodies_nostart",
                              (optListToList SR) @ tr @ tbody_rest)) ::
                         tbody_peers end)
fun tbodies_PROD_1_ACT (tr, STARTTBODY, tbodies_rest, cdata_opt, tr_SPAN : (Lex.pos * Lex.pos), STARTTBODY_SPAN : (Lex.pos * Lex.pos), tbodies_rest_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( let val (tbody_rest, tbody_peers) = tbodies_rest
              in (Nd (Atom.atom "tbodies",
                      (Lf (Tok.STARTTBODY STARTTBODY)) ::
                      (cdata_opt @ tr @ tbody_rest))) ::
                 tbody_peers end)
fun tbodies_rest_PROD_1_ACT (ENDTBODY, tbodies, cdata_opt, ENDTBODY_SPAN : (Lex.pos * Lex.pos), tbodies_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.ENDTBODY)) :: cdata_opt,
                   optListToList tbodies)
fun tbodies_rest_PROD_2_ACT (tr, STARTTBODY, tbodies_rest, cdata_opt, tr_SPAN : (Lex.pos * Lex.pos), STARTTBODY_SPAN : (Lex.pos * Lex.pos), tbodies_rest_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( let val (tbody_rest, tbody_peers) =
                           case tbodies_rest of NONE => ([], [])
                                              | SOME tbodies_tup => tbodies_tup
                   in ([], (Nd (Atom.atom "tbodies_rest",
                                (Lf (Tok.STARTTBODY STARTTBODY)) ::
                                (cdata_opt @ tr @ tbody_rest))) :: tbody_peers)
                   end)
fun td_PROD_1_SUBRULE_2_PROD_1_ACT (STARTTD, flow, ENDTD, cdata_opt, STARTTD_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), ENDTD_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.ENDTD)) :: cdata_opt)
fun td_PROD_1_ACT (SR, STARTTD, flow, SR_SPAN : (Lex.pos * Lex.pos), STARTTD_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "td",
             (Lf (Tok.STARTTD STARTTD)) :: (flow @ (optListToList SR))))
fun textarea_PROD_1_ACT (ENDTEXTAREA, cdata_opt, STARTTEXTAREA, ENDTEXTAREA_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), STARTTEXTAREA_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "textarea",
                   (Lf (Tok.STARTTEXTAREA STARTTEXTAREA)) ::
                   (cdata_opt @ [Lf (Tok.ENDTEXTAREA)])))
fun tfoot_PROD_1_SUBRULE_2_PROD_1_ACT (tr, ENDTFOOT, STARTTFOOT, cdata_opt, tr_SPAN : (Lex.pos * Lex.pos), ENDTFOOT_SPAN : (Lex.pos * Lex.pos), STARTTFOOT_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.ENDTFOOT)) :: cdata_opt)
fun tfoot_PROD_1_ACT (SR, tr, STARTTFOOT, cdata_opt, SR_SPAN : (Lex.pos * Lex.pos), tr_SPAN : (Lex.pos * Lex.pos), STARTTFOOT_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "tfoot",
                (Lf (Tok.STARTTFOOT STARTTFOOT)) :: (cdata_opt @ tr @
                                                     (optListToList SR))))
fun th_PROD_1_SUBRULE_2_PROD_1_ACT (STARTTH, flow, ENDTH, cdata_opt, STARTTH_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), ENDTH_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.ENDTH)) :: cdata_opt)
fun th_PROD_1_ACT (SR, STARTTH, flow, SR_SPAN : (Lex.pos * Lex.pos), STARTTH_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "th",
             (Lf (Tok.STARTTH STARTTH)) :: (flow @ (optListToList SR))))
fun thead_PROD_1_SUBRULE_2_PROD_1_ACT (tr, ENDTHEAD, STARTTHEAD, cdata_opt, tr_SPAN : (Lex.pos * Lex.pos), ENDTHEAD_SPAN : (Lex.pos * Lex.pos), STARTTHEAD_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.ENDTHEAD)) :: cdata_opt)
fun thead_PROD_1_ACT (SR, tr, STARTTHEAD, cdata_opt, SR_SPAN : (Lex.pos * Lex.pos), tr_SPAN : (Lex.pos * Lex.pos), STARTTHEAD_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "thead",
                (Lf (Tok.STARTTHEAD STARTTHEAD)) :: (cdata_opt @ tr @
                                                     (optListToList SR))))
fun tr_PROD_1_SUBRULE_2_PROD_1_ACT (SR1, STARTTR, ENDTR, cdata_opt, SR1_SPAN : (Lex.pos * Lex.pos), STARTTR_SPAN : (Lex.pos * Lex.pos), ENDTR_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf (Tok.ENDTR)) :: cdata_opt)
fun tr_PROD_1_ACT (SR1, SR2, STARTTR, cdata_opt, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), STARTTR_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "tr",
             (Lf (Tok.STARTTR STARTTR)) :: (cdata_opt @ SR1 @
                                            (optListToList SR2))))
fun tt_PROD_1_ACT (STARTTT, ENDTT, inline, STARTTT_SPAN : (Lex.pos * Lex.pos), ENDTT_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "tt",
             (Lf (Tok.STARTTT STARTTT)) :: (inline @ [Lf (Tok.ENDTT)])))
fun u_PROD_1_ACT (ENDU, STARTU, inline, ENDU_SPAN : (Lex.pos * Lex.pos), STARTU_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "u",
            (Lf (Tok.STARTU STARTU)) :: (inline @ [Lf (Tok.ENDU)])))
fun ul_PROD_1_ACT (li, STARTUL, ENDUL, cdata_opt, li_SPAN : (Lex.pos * Lex.pos), STARTUL_SPAN : (Lex.pos * Lex.pos), ENDUL_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "ul",
             ((Lf (Tok.STARTUL STARTUL)) :: (cdata_opt @ li @
                                             [Lf (Tok.ENDUL)]))))
fun var_PROD_1_ACT (STARTVAR, inline, ENDVAR, STARTVAR_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDVAR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Nd (Atom.atom "var",
              (Lf (Tok.STARTVAR STARTVAR)) :: (inline @
                                               [Lf (Tok.ENDVAR)])))
fun cdata_PROD_1_SUBRULE_1_PROD_1_ACT (PCDATA, PCDATA_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Tok.PCDATA PCDATA)
fun cdata_PROD_1_SUBRULE_1_PROD_2_ACT (CHAR_REF, CHAR_REF_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Tok.CHAR_REF CHAR_REF)
fun cdata_PROD_1_SUBRULE_1_PROD_3_ACT (ENTITY_REF, ENTITY_REF_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Tok.ENTITY_REF ENTITY_REF)
fun cdata_PROD_1_SUBRULE_1_PROD_4_ACT (COMMENT, COMMENT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( Tok.COMMENT COMMENT)
fun cdata_PROD_1_ACT (SR, SR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( (Lf SR) : HTML4Tokens.token parsetree)
fun cdata_opt_PROD_1_ACT (cdata, cdata_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)) = 
  ( cdata : HTML4Tokens.token parsetree list)

    end

    structure Err = AntlrErrHandler(
      structure Tok = Tok
      structure Lex = Lex)
    structure EBNF = AntlrEBNF(struct
			         type strm = Err.wstream
			         val getSpan = Err.getSpan
			       end)

    fun mk lexFn = let
fun getS() = {}
fun putS{} = ()
fun unwrap (ret, strm, repairs) = (ret, strm, repairs)
        val (eh, lex) = Err.mkErrHandler {get = getS, put = putS}
	fun fail() = Err.failure eh
	fun tryProds (strm, prods) = let
	  fun try [] = fail()
	    | try (prod :: prods) = 
	        (Err.whileDisabled eh (fn() => prod strm)) 
		handle Err.ParseError => try (prods)
          in try prods end
fun matchEOF strm = (case (lex(strm))
 of (Tok.EOF, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchENDVAR strm = (case (lex(strm))
 of (Tok.ENDVAR, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTVAR strm = (case (lex(strm))
 of (Tok.STARTVAR(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDUL strm = (case (lex(strm))
 of (Tok.ENDUL, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTUL strm = (case (lex(strm))
 of (Tok.STARTUL(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDU strm = (case (lex(strm))
 of (Tok.ENDU, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTU strm = (case (lex(strm))
 of (Tok.STARTU(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDTT strm = (case (lex(strm))
 of (Tok.ENDTT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTTT strm = (case (lex(strm))
 of (Tok.STARTTT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDTR strm = (case (lex(strm))
 of (Tok.ENDTR, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTTR strm = (case (lex(strm))
 of (Tok.STARTTR(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDTITLE strm = (case (lex(strm))
 of (Tok.ENDTITLE, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTTITLE strm = (case (lex(strm))
 of (Tok.STARTTITLE(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDTHEAD strm = (case (lex(strm))
 of (Tok.ENDTHEAD, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTTHEAD strm = (case (lex(strm))
 of (Tok.STARTTHEAD(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDTH strm = (case (lex(strm))
 of (Tok.ENDTH, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTTH strm = (case (lex(strm))
 of (Tok.STARTTH(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDTFOOT strm = (case (lex(strm))
 of (Tok.ENDTFOOT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTTFOOT strm = (case (lex(strm))
 of (Tok.STARTTFOOT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDTEXTAREA strm = (case (lex(strm))
 of (Tok.ENDTEXTAREA, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTTEXTAREA strm = (case (lex(strm))
 of (Tok.STARTTEXTAREA(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDTD strm = (case (lex(strm))
 of (Tok.ENDTD, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTTD strm = (case (lex(strm))
 of (Tok.STARTTD(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDTBODY strm = (case (lex(strm))
 of (Tok.ENDTBODY, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTTBODY strm = (case (lex(strm))
 of (Tok.STARTTBODY(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDTABLE strm = (case (lex(strm))
 of (Tok.ENDTABLE, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTTABLE strm = (case (lex(strm))
 of (Tok.STARTTABLE(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDSUP strm = (case (lex(strm))
 of (Tok.ENDSUP, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTSUP strm = (case (lex(strm))
 of (Tok.STARTSUP(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDSUB strm = (case (lex(strm))
 of (Tok.ENDSUB, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTSUB strm = (case (lex(strm))
 of (Tok.STARTSUB(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDSTYLE strm = (case (lex(strm))
 of (Tok.ENDSTYLE, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTSTYLE strm = (case (lex(strm))
 of (Tok.STARTSTYLE(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDSTRONG strm = (case (lex(strm))
 of (Tok.ENDSTRONG, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTSTRONG strm = (case (lex(strm))
 of (Tok.STARTSTRONG(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDSTRIKE strm = (case (lex(strm))
 of (Tok.ENDSTRIKE, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTSTRIKE strm = (case (lex(strm))
 of (Tok.STARTSTRIKE(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDSPAN strm = (case (lex(strm))
 of (Tok.ENDSPAN, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTSPAN strm = (case (lex(strm))
 of (Tok.STARTSPAN(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDSMALL strm = (case (lex(strm))
 of (Tok.ENDSMALL, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTSMALL strm = (case (lex(strm))
 of (Tok.STARTSMALL(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDSELECT strm = (case (lex(strm))
 of (Tok.ENDSELECT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTSELECT strm = (case (lex(strm))
 of (Tok.STARTSELECT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDSCRIPT strm = (case (lex(strm))
 of (Tok.ENDSCRIPT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTSCRIPT strm = (case (lex(strm))
 of (Tok.STARTSCRIPT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDSAMP strm = (case (lex(strm))
 of (Tok.ENDSAMP, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTSAMP strm = (case (lex(strm))
 of (Tok.STARTSAMP(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDS strm = (case (lex(strm))
 of (Tok.ENDS, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTS strm = (case (lex(strm))
 of (Tok.STARTS(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDQ strm = (case (lex(strm))
 of (Tok.ENDQ, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTQ strm = (case (lex(strm))
 of (Tok.STARTQ(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDPRE strm = (case (lex(strm))
 of (Tok.ENDPRE, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTPRE strm = (case (lex(strm))
 of (Tok.STARTPRE(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTPARAM strm = (case (lex(strm))
 of (Tok.STARTPARAM(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDP strm = (case (lex(strm))
 of (Tok.ENDP, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTP strm = (case (lex(strm))
 of (Tok.STARTP(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDOPTION strm = (case (lex(strm))
 of (Tok.ENDOPTION, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTOPTION strm = (case (lex(strm))
 of (Tok.STARTOPTION(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDOPTGROUP strm = (case (lex(strm))
 of (Tok.ENDOPTGROUP, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTOPTGROUP strm = (case (lex(strm))
 of (Tok.STARTOPTGROUP(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDOL strm = (case (lex(strm))
 of (Tok.ENDOL, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTOL strm = (case (lex(strm))
 of (Tok.STARTOL(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDOBJECT strm = (case (lex(strm))
 of (Tok.ENDOBJECT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTOBJECT strm = (case (lex(strm))
 of (Tok.STARTOBJECT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDNOSCRIPT strm = (case (lex(strm))
 of (Tok.ENDNOSCRIPT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTNOSCRIPT strm = (case (lex(strm))
 of (Tok.STARTNOSCRIPT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDNOFRAMES strm = (case (lex(strm))
 of (Tok.ENDNOFRAMES, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTNOFRAMES strm = (case (lex(strm))
 of (Tok.STARTNOFRAMES(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTMETA strm = (case (lex(strm))
 of (Tok.STARTMETA(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDMENU strm = (case (lex(strm))
 of (Tok.ENDMENU, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTMENU strm = (case (lex(strm))
 of (Tok.STARTMENU(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDMAP strm = (case (lex(strm))
 of (Tok.ENDMAP, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTMAP strm = (case (lex(strm))
 of (Tok.STARTMAP(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTLINK strm = (case (lex(strm))
 of (Tok.STARTLINK(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDLI strm = (case (lex(strm))
 of (Tok.ENDLI, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTLI strm = (case (lex(strm))
 of (Tok.STARTLI(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDLEGEND strm = (case (lex(strm))
 of (Tok.ENDLEGEND, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTLEGEND strm = (case (lex(strm))
 of (Tok.STARTLEGEND(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDLABEL strm = (case (lex(strm))
 of (Tok.ENDLABEL, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTLABEL strm = (case (lex(strm))
 of (Tok.STARTLABEL(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDKBD strm = (case (lex(strm))
 of (Tok.ENDKBD, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTKBD strm = (case (lex(strm))
 of (Tok.STARTKBD(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTISINDEX strm = (case (lex(strm))
 of (Tok.STARTISINDEX(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDINS strm = (case (lex(strm))
 of (Tok.ENDINS, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTINS strm = (case (lex(strm))
 of (Tok.STARTINS(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTINPUT strm = (case (lex(strm))
 of (Tok.STARTINPUT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTIMG strm = (case (lex(strm))
 of (Tok.STARTIMG(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDIFRAME strm = (case (lex(strm))
 of (Tok.ENDIFRAME, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTIFRAME strm = (case (lex(strm))
 of (Tok.STARTIFRAME(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDI strm = (case (lex(strm))
 of (Tok.ENDI, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTI strm = (case (lex(strm))
 of (Tok.STARTI(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDHTML strm = (case (lex(strm))
 of (Tok.ENDHTML, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTHTML strm = (case (lex(strm))
 of (Tok.STARTHTML(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTHR strm = (case (lex(strm))
 of (Tok.STARTHR(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDHEAD strm = (case (lex(strm))
 of (Tok.ENDHEAD, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTHEAD strm = (case (lex(strm))
 of (Tok.STARTHEAD(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDH6 strm = (case (lex(strm))
 of (Tok.ENDH6, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTH6 strm = (case (lex(strm))
 of (Tok.STARTH6(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDH5 strm = (case (lex(strm))
 of (Tok.ENDH5, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTH5 strm = (case (lex(strm))
 of (Tok.STARTH5(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDH4 strm = (case (lex(strm))
 of (Tok.ENDH4, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTH4 strm = (case (lex(strm))
 of (Tok.STARTH4(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDH3 strm = (case (lex(strm))
 of (Tok.ENDH3, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTH3 strm = (case (lex(strm))
 of (Tok.STARTH3(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDH2 strm = (case (lex(strm))
 of (Tok.ENDH2, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTH2 strm = (case (lex(strm))
 of (Tok.STARTH2(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDH1 strm = (case (lex(strm))
 of (Tok.ENDH1, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTH1 strm = (case (lex(strm))
 of (Tok.STARTH1(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDFRAMESET strm = (case (lex(strm))
 of (Tok.ENDFRAMESET, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTFRAMESET strm = (case (lex(strm))
 of (Tok.STARTFRAMESET(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTFRAME strm = (case (lex(strm))
 of (Tok.STARTFRAME(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDFORM strm = (case (lex(strm))
 of (Tok.ENDFORM, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTFORM strm = (case (lex(strm))
 of (Tok.STARTFORM(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDFONT strm = (case (lex(strm))
 of (Tok.ENDFONT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTFONT strm = (case (lex(strm))
 of (Tok.STARTFONT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDFIELDSET strm = (case (lex(strm))
 of (Tok.ENDFIELDSET, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTFIELDSET strm = (case (lex(strm))
 of (Tok.STARTFIELDSET(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDEM strm = (case (lex(strm))
 of (Tok.ENDEM, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTEM strm = (case (lex(strm))
 of (Tok.STARTEM(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDDT strm = (case (lex(strm))
 of (Tok.ENDDT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTDT strm = (case (lex(strm))
 of (Tok.STARTDT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDDL strm = (case (lex(strm))
 of (Tok.ENDDL, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTDL strm = (case (lex(strm))
 of (Tok.STARTDL(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDDIV strm = (case (lex(strm))
 of (Tok.ENDDIV, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTDIV strm = (case (lex(strm))
 of (Tok.STARTDIV(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDDIR strm = (case (lex(strm))
 of (Tok.ENDDIR, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTDIR strm = (case (lex(strm))
 of (Tok.STARTDIR(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDDFN strm = (case (lex(strm))
 of (Tok.ENDDFN, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTDFN strm = (case (lex(strm))
 of (Tok.STARTDFN(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDDEL strm = (case (lex(strm))
 of (Tok.ENDDEL, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTDEL strm = (case (lex(strm))
 of (Tok.STARTDEL(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDDD strm = (case (lex(strm))
 of (Tok.ENDDD, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTDD strm = (case (lex(strm))
 of (Tok.STARTDD(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDCOLGROUP strm = (case (lex(strm))
 of (Tok.ENDCOLGROUP, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTCOLGROUP strm = (case (lex(strm))
 of (Tok.STARTCOLGROUP(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTCOL strm = (case (lex(strm))
 of (Tok.STARTCOL(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDCODE strm = (case (lex(strm))
 of (Tok.ENDCODE, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTCODE strm = (case (lex(strm))
 of (Tok.STARTCODE(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDCITE strm = (case (lex(strm))
 of (Tok.ENDCITE, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTCITE strm = (case (lex(strm))
 of (Tok.STARTCITE(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDCENTER strm = (case (lex(strm))
 of (Tok.ENDCENTER, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTCENTER strm = (case (lex(strm))
 of (Tok.STARTCENTER(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDCAPTION strm = (case (lex(strm))
 of (Tok.ENDCAPTION, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTCAPTION strm = (case (lex(strm))
 of (Tok.STARTCAPTION(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDBUTTON strm = (case (lex(strm))
 of (Tok.ENDBUTTON, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTBUTTON strm = (case (lex(strm))
 of (Tok.STARTBUTTON(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTBR strm = (case (lex(strm))
 of (Tok.STARTBR(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDBODY strm = (case (lex(strm))
 of (Tok.ENDBODY, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTBODY strm = (case (lex(strm))
 of (Tok.STARTBODY(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDBLOCKQUOTE strm = (case (lex(strm))
 of (Tok.ENDBLOCKQUOTE, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTBLOCKQUOTE strm = (case (lex(strm))
 of (Tok.STARTBLOCKQUOTE(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDBIG strm = (case (lex(strm))
 of (Tok.ENDBIG, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTBIG strm = (case (lex(strm))
 of (Tok.STARTBIG(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDBDO strm = (case (lex(strm))
 of (Tok.ENDBDO, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTBDO strm = (case (lex(strm))
 of (Tok.STARTBDO(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTBASEFONT strm = (case (lex(strm))
 of (Tok.STARTBASEFONT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTBASE strm = (case (lex(strm))
 of (Tok.STARTBASE(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDB strm = (case (lex(strm))
 of (Tok.ENDB, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTB strm = (case (lex(strm))
 of (Tok.STARTB(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTAREA strm = (case (lex(strm))
 of (Tok.STARTAREA(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDAPPLET strm = (case (lex(strm))
 of (Tok.ENDAPPLET, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTAPPLET strm = (case (lex(strm))
 of (Tok.STARTAPPLET(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDADDRESS strm = (case (lex(strm))
 of (Tok.ENDADDRESS, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTADDRESS strm = (case (lex(strm))
 of (Tok.STARTADDRESS(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDACRONYM strm = (case (lex(strm))
 of (Tok.ENDACRONYM, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTACRONYM strm = (case (lex(strm))
 of (Tok.STARTACRONYM(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDABBR strm = (case (lex(strm))
 of (Tok.ENDABBR, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTABBR strm = (case (lex(strm))
 of (Tok.STARTABBR(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENDA strm = (case (lex(strm))
 of (Tok.ENDA, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTARTA strm = (case (lex(strm))
 of (Tok.STARTA(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchXML_PROCESSING strm = (case (lex(strm))
 of (Tok.XML_PROCESSING(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchENTITY_REF strm = (case (lex(strm))
 of (Tok.ENTITY_REF(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchCHAR_REF strm = (case (lex(strm))
 of (Tok.CHAR_REF(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchDOCTYPE strm = (case (lex(strm))
 of (Tok.DOCTYPE(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchPCDATA strm = (case (lex(strm))
 of (Tok.PCDATA(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchCOMMENT strm = (case (lex(strm))
 of (Tok.COMMENT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchCLOSETAG strm = (case (lex(strm))
 of (Tok.CLOSETAG(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchOPENTAG strm = (case (lex(strm))
 of (Tok.OPENTAG(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))

val (document_NT, body_NT, flow_NT, block_NT, inline_NT, cdata_opt_NT) = 
let
fun cdata_NT (strm) = let
      val (SR_RES, SR_SPAN, strm') = let
      fun cdata_PROD_1_SUBRULE_1_NT (strm) = let
            fun cdata_PROD_1_SUBRULE_1_PROD_1 (strm) = let
                  val (PCDATA_RES, PCDATA_SPAN, strm') = matchPCDATA(strm)
                  val FULL_SPAN = (#1(PCDATA_SPAN), #2(PCDATA_SPAN))
                  in
                    (UserCode.cdata_PROD_1_SUBRULE_1_PROD_1_ACT (PCDATA_RES, PCDATA_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                      FULL_SPAN, strm')
                  end
            fun cdata_PROD_1_SUBRULE_1_PROD_2 (strm) = let
                  val (CHAR_REF_RES, CHAR_REF_SPAN, strm') = matchCHAR_REF(strm)
                  val FULL_SPAN = (#1(CHAR_REF_SPAN), #2(CHAR_REF_SPAN))
                  in
                    (UserCode.cdata_PROD_1_SUBRULE_1_PROD_2_ACT (CHAR_REF_RES, CHAR_REF_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                      FULL_SPAN, strm')
                  end
            fun cdata_PROD_1_SUBRULE_1_PROD_3 (strm) = let
                  val (ENTITY_REF_RES, ENTITY_REF_SPAN, strm') = matchENTITY_REF(strm)
                  val FULL_SPAN = (#1(ENTITY_REF_SPAN), #2(ENTITY_REF_SPAN))
                  in
                    (UserCode.cdata_PROD_1_SUBRULE_1_PROD_3_ACT (ENTITY_REF_RES, ENTITY_REF_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                      FULL_SPAN, strm')
                  end
            fun cdata_PROD_1_SUBRULE_1_PROD_4 (strm) = let
                  val (COMMENT_RES, COMMENT_SPAN, strm') = matchCOMMENT(strm)
                  val FULL_SPAN = (#1(COMMENT_SPAN), #2(COMMENT_SPAN))
                  in
                    (UserCode.cdata_PROD_1_SUBRULE_1_PROD_4_ACT (COMMENT_RES, COMMENT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                      FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.COMMENT(_), _, strm') =>
                    cdata_PROD_1_SUBRULE_1_PROD_4(strm)
                | (Tok.CHAR_REF(_), _, strm') =>
                    cdata_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.PCDATA(_), _, strm') =>
                    cdata_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.ENTITY_REF(_), _, strm') =>
                    cdata_PROD_1_SUBRULE_1_PROD_3(strm)
                | _ => fail()
              (* end case *))
            end
      in
        cdata_PROD_1_SUBRULE_1_NT(strm)
      end
      val FULL_SPAN = (#1(SR_SPAN), #2(SR_SPAN))
      in
        (UserCode.cdata_PROD_1_ACT (SR_RES, SR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun cdata_opt_NT (strm) = let
      fun cdata_opt_PROD_1_SUBRULE_1_NT (strm) = let
            val (cdata_RES, cdata_SPAN, strm') = cdata_NT(strm)
            val FULL_SPAN = (#1(cdata_SPAN), #2(cdata_SPAN))
            in
              ((cdata_RES), FULL_SPAN, strm')
            end
      fun cdata_opt_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | _ => false
            (* end case *))
      val (cdata_RES, cdata_SPAN, strm') = EBNF.closure(cdata_opt_PROD_1_SUBRULE_1_PRED, cdata_opt_PROD_1_SUBRULE_1_NT, strm)
      val FULL_SPAN = (#1(cdata_SPAN), #2(cdata_SPAN))
      in
        (UserCode.cdata_opt_PROD_1_ACT (cdata_RES, cdata_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun isindex_NT (strm) = let
      val (STARTISINDEX_RES, STARTISINDEX_SPAN, strm') = matchSTARTISINDEX(strm)
      val FULL_SPAN = (#1(STARTISINDEX_SPAN), #2(STARTISINDEX_SPAN))
      in
        (UserCode.isindex_PROD_1_ACT (STARTISINDEX_RES, STARTISINDEX_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun col_NT (strm) = let
      val (STARTCOL_RES, STARTCOL_SPAN, strm') = matchSTARTCOL(strm)
      val FULL_SPAN = (#1(STARTCOL_SPAN), #2(STARTCOL_SPAN))
      in
        (UserCode.col_PROD_1_ACT (STARTCOL_RES, STARTCOL_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun colgroup_NT (strm) = let
      val (STARTCOLGROUP_RES, STARTCOLGROUP_SPAN, strm') = matchSTARTCOLGROUP(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun colgroup_PROD_1_SUBRULE_1_NT (strm) = let
            val (col_RES, col_SPAN, strm') = col_NT(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(col_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.colgroup_PROD_1_SUBRULE_1_PROD_1_ACT (col_RES, STARTCOLGROUP_RES, cdata_opt_RES, col_SPAN : (Lex.pos * Lex.pos), STARTCOLGROUP_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun colgroup_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTCOL(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR1_RES, SR1_SPAN, strm') = EBNF.closure(colgroup_PROD_1_SUBRULE_1_PRED, colgroup_PROD_1_SUBRULE_1_NT, strm')
      fun colgroup_PROD_1_SUBRULE_2_NT (strm) = let
            val (ENDCOLGROUP_RES, ENDCOLGROUP_SPAN, strm') = matchENDCOLGROUP(strm)
            val FULL_SPAN = (#1(ENDCOLGROUP_SPAN), #2(ENDCOLGROUP_SPAN))
            in
              (UserCode.colgroup_PROD_1_SUBRULE_2_PROD_1_ACT (SR1_RES, STARTCOLGROUP_RES, ENDCOLGROUP_RES, cdata_opt_RES, SR1_SPAN : (Lex.pos * Lex.pos), STARTCOLGROUP_SPAN : (Lex.pos * Lex.pos), ENDCOLGROUP_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun colgroup_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.ENDCOLGROUP, _, strm') => true
              | _ => false
            (* end case *))
      val (SR2_RES, SR2_SPAN, strm') = EBNF.optional(colgroup_PROD_1_SUBRULE_2_PRED, colgroup_PROD_1_SUBRULE_2_NT, strm')
      val FULL_SPAN = (#1(STARTCOLGROUP_SPAN), #2(SR2_SPAN))
      in
        (UserCode.colgroup_PROD_1_ACT (SR1_RES, SR2_RES, STARTCOLGROUP_RES, cdata_opt_RES, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), STARTCOLGROUP_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun col_or_colgroups_NT (strm) = let
      fun col_or_colgroups_PROD_1 (strm) = let
            val FULL_SPAN = (Err.getPos(strm), Err.getPos(strm))
            in
              (UserCode.col_or_colgroups_PROD_1_ACT (FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm)
            end
      fun col_or_colgroups_PROD_2 (strm) = let
            fun col_or_colgroups_PROD_2_SUBRULE_1_NT (strm) = let
                  val (col_RES, col_SPAN, strm') = col_NT(strm)
                  val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
                  val FULL_SPAN = (#1(col_SPAN), #2(cdata_opt_SPAN))
                  in
                    (UserCode.col_or_colgroups_PROD_2_SUBRULE_1_PROD_1_ACT (col_RES, cdata_opt_RES, col_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                      FULL_SPAN, strm')
                  end
            fun col_or_colgroups_PROD_2_SUBRULE_1_PRED (strm) = (case (lex(strm))
                   of (Tok.STARTCOL(_), _, strm') => true
                    | _ => false
                  (* end case *))
            val (SR_RES, SR_SPAN, strm') = EBNF.posclos(col_or_colgroups_PROD_2_SUBRULE_1_PRED, col_or_colgroups_PROD_2_SUBRULE_1_NT, strm)
            val FULL_SPAN = (#1(SR_SPAN), #2(SR_SPAN))
            in
              (UserCode.col_or_colgroups_PROD_2_ACT (SR_RES, SR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun col_or_colgroups_PROD_3 (strm) = let
            fun col_or_colgroups_PROD_3_SUBRULE_1_NT (strm) = let
                  val (colgroup_RES, colgroup_SPAN, strm') = colgroup_NT(strm)
                  val FULL_SPAN = (#1(colgroup_SPAN), #2(colgroup_SPAN))
                  in
                    ((colgroup_RES), FULL_SPAN, strm')
                  end
            fun col_or_colgroups_PROD_3_SUBRULE_1_PRED (strm) = (case (lex(strm))
                   of (Tok.STARTCOLGROUP(_), _, strm') => true
                    | _ => false
                  (* end case *))
            val (colgroup_RES, colgroup_SPAN, strm') = EBNF.posclos(col_or_colgroups_PROD_3_SUBRULE_1_PRED, col_or_colgroups_PROD_3_SUBRULE_1_NT, strm)
            val FULL_SPAN = (#1(colgroup_SPAN), #2(colgroup_SPAN))
            in
              ((colgroup_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTCOLGROUP(_), _, strm') => col_or_colgroups_PROD_3(strm)
          | (Tok.STARTTBODY(_), _, strm') => col_or_colgroups_PROD_1(strm)
          | (Tok.STARTTFOOT(_), _, strm') => col_or_colgroups_PROD_1(strm)
          | (Tok.STARTTHEAD(_), _, strm') => col_or_colgroups_PROD_1(strm)
          | (Tok.STARTTR(_), _, strm') => col_or_colgroups_PROD_1(strm)
          | (Tok.STARTCOL(_), _, strm') => col_or_colgroups_PROD_2(strm)
          | _ => fail()
        (* end case *))
      end
fun hr_NT (strm) = let
      val (STARTHR_RES, STARTHR_SPAN, strm') = matchSTARTHR(strm)
      val FULL_SPAN = (#1(STARTHR_SPAN), #2(STARTHR_SPAN))
      in
        (UserCode.hr_PROD_1_ACT (STARTHR_RES, STARTHR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun script_NT (strm) = let
      val (STARTSCRIPT_RES, STARTSCRIPT_SPAN, strm') = matchSTARTSCRIPT(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      val (ENDSCRIPT_RES, ENDSCRIPT_SPAN, strm') = matchENDSCRIPT(strm')
      val FULL_SPAN = (#1(STARTSCRIPT_SPAN), #2(ENDSCRIPT_SPAN))
      in
        (UserCode.script_PROD_1_ACT (STARTSCRIPT_RES, cdata_opt_RES, ENDSCRIPT_RES, STARTSCRIPT_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), ENDSCRIPT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun textarea_NT (strm) = let
      val (STARTTEXTAREA_RES, STARTTEXTAREA_SPAN, strm') = matchSTARTTEXTAREA(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      val (ENDTEXTAREA_RES, ENDTEXTAREA_SPAN, strm') = matchENDTEXTAREA(strm')
      val FULL_SPAN = (#1(STARTTEXTAREA_SPAN), #2(ENDTEXTAREA_SPAN))
      in
        (UserCode.textarea_PROD_1_ACT (ENDTEXTAREA_RES, cdata_opt_RES, STARTTEXTAREA_RES, ENDTEXTAREA_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), STARTTEXTAREA_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun option_NT (strm) = let
      val (STARTOPTION_RES, STARTOPTION_SPAN, strm') = matchSTARTOPTION(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun option_PROD_1_SUBRULE_1_NT (strm) = let
            val (ENDOPTION_RES, ENDOPTION_SPAN, strm') = matchENDOPTION(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(ENDOPTION_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.option_PROD_1_SUBRULE_1_PROD_1_ACT (STARTOPTION_RES, ENDOPTION_RES, cdata_opt_RES, STARTOPTION_SPAN : (Lex.pos * Lex.pos), ENDOPTION_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun option_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.ENDOPTION, _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.optional(option_PROD_1_SUBRULE_1_PRED, option_PROD_1_SUBRULE_1_NT, strm')
      val FULL_SPAN = (#1(STARTOPTION_SPAN), #2(SR_SPAN))
      in
        (UserCode.option_PROD_1_ACT (SR_RES, STARTOPTION_RES, cdata_opt_RES, SR_SPAN : (Lex.pos * Lex.pos), STARTOPTION_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun optgroup_NT (strm) = let
      val (STARTOPTGROUP_RES, STARTOPTGROUP_SPAN, strm') = matchSTARTOPTGROUP(strm)
      val (cdata_opt1_RES, cdata_opt1_SPAN, strm') = cdata_opt_NT(strm')
      fun optgroup_PROD_1_SUBRULE_1_NT (strm) = let
            val (option_RES, option_SPAN, strm') = option_NT(strm)
            val FULL_SPAN = (#1(option_SPAN), #2(option_SPAN))
            in
              ((option_RES), FULL_SPAN, strm')
            end
      fun optgroup_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTOPTION(_), _, strm') => true
              | _ => false
            (* end case *))
      val (option_RES, option_SPAN, strm') = EBNF.posclos(optgroup_PROD_1_SUBRULE_1_PRED, optgroup_PROD_1_SUBRULE_1_NT, strm')
      val (ENDOPTGROUP_RES, ENDOPTGROUP_SPAN, strm') = matchENDOPTGROUP(strm')
      val (cdata_opt2_RES, cdata_opt2_SPAN, strm') = cdata_opt_NT(strm')
      val FULL_SPAN = (#1(STARTOPTGROUP_SPAN), #2(cdata_opt2_SPAN))
      in
        (UserCode.optgroup_PROD_1_ACT (cdata_opt1_RES, cdata_opt2_RES, STARTOPTGROUP_RES, ENDOPTGROUP_RES, option_RES, cdata_opt1_SPAN : (Lex.pos * Lex.pos), cdata_opt2_SPAN : (Lex.pos * Lex.pos), STARTOPTGROUP_SPAN : (Lex.pos * Lex.pos), ENDOPTGROUP_SPAN : (Lex.pos * Lex.pos), option_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun select_NT (strm) = let
      val (STARTSELECT_RES, STARTSELECT_SPAN, strm') = matchSTARTSELECT(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun select_PROD_1_SUBRULE_1_NT (strm) = let
            fun select_PROD_1_SUBRULE_1_PROD_1 (strm) = let
                  val (optgroup_RES, optgroup_SPAN, strm') = optgroup_NT(strm)
                  val FULL_SPAN = (#1(optgroup_SPAN), #2(optgroup_SPAN))
                  in
                    ((optgroup_RES), FULL_SPAN, strm')
                  end
            fun select_PROD_1_SUBRULE_1_PROD_2 (strm) = let
                  val (option_RES, option_SPAN, strm') = option_NT(strm)
                  val FULL_SPAN = (#1(option_SPAN), #2(option_SPAN))
                  in
                    ((option_RES), FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.STARTOPTION(_), _, strm') =>
                    select_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTOPTGROUP(_), _, strm') =>
                    select_PROD_1_SUBRULE_1_PROD_1(strm)
                | _ => fail()
              (* end case *))
            end
      fun select_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTOPTGROUP(_), _, strm') => true
              | (Tok.STARTOPTION(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.posclos(select_PROD_1_SUBRULE_1_PRED, select_PROD_1_SUBRULE_1_NT, strm')
      val (ENDSELECT_RES, ENDSELECT_SPAN, strm') = matchENDSELECT(strm')
      val FULL_SPAN = (#1(STARTSELECT_SPAN), #2(ENDSELECT_SPAN))
      in
        (UserCode.select_PROD_1_ACT (SR_RES, STARTSELECT_RES, cdata_opt_RES, ENDSELECT_RES, SR_SPAN : (Lex.pos * Lex.pos), STARTSELECT_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), ENDSELECT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun input_NT (strm) = let
      val (STARTINPUT_RES, STARTINPUT_SPAN, strm') = matchSTARTINPUT(strm)
      val FULL_SPAN = (#1(STARTINPUT_SPAN), #2(STARTINPUT_SPAN))
      in
        (UserCode.input_PROD_1_ACT (STARTINPUT_RES, STARTINPUT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun basefont_NT (strm) = let
      val (STARTBASEFONT_RES, STARTBASEFONT_SPAN, strm') = matchSTARTBASEFONT(strm)
      val FULL_SPAN = (#1(STARTBASEFONT_SPAN), #2(STARTBASEFONT_SPAN))
      in
        (UserCode.basefont_PROD_1_ACT (STARTBASEFONT_RES, STARTBASEFONT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun param_NT (strm) = let
      val (STARTPARAM_RES, STARTPARAM_SPAN, strm') = matchSTARTPARAM(strm)
      val FULL_SPAN = (#1(STARTPARAM_SPAN), #2(STARTPARAM_SPAN))
      in
        (UserCode.param_PROD_1_ACT (STARTPARAM_RES, STARTPARAM_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun area_NT (strm) = let
      val (STARTAREA_RES, STARTAREA_SPAN, strm') = matchSTARTAREA(strm)
      val FULL_SPAN = (#1(STARTAREA_SPAN), #2(STARTAREA_SPAN))
      in
        (UserCode.area_PROD_1_ACT (STARTAREA_RES, STARTAREA_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun br_NT (strm) = let
      val (STARTBR_RES, STARTBR_SPAN, strm') = matchSTARTBR(strm)
      val FULL_SPAN = (#1(STARTBR_SPAN), #2(STARTBR_SPAN))
      in
        (UserCode.br_PROD_1_ACT (STARTBR_RES, STARTBR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun img_NT (strm) = let
      val (STARTIMG_RES, STARTIMG_SPAN, strm') = matchSTARTIMG(strm)
      val FULL_SPAN = (#1(STARTIMG_SPAN), #2(STARTIMG_SPAN))
      in
        (UserCode.img_PROD_1_ACT (STARTIMG_RES, STARTIMG_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun inline_NT (strm) = let
      fun inline_PROD_1 (strm) = let
            val (fontstyle_RES, fontstyle_SPAN, strm') = fontstyle_NT(strm)
            val FULL_SPAN = (#1(fontstyle_SPAN), #2(fontstyle_SPAN))
            in
              ((fontstyle_RES), FULL_SPAN, strm')
            end
      fun inline_PROD_2 (strm) = let
            val (phrase_RES, phrase_SPAN, strm') = phrase_NT(strm)
            val FULL_SPAN = (#1(phrase_SPAN), #2(phrase_SPAN))
            in
              ((phrase_RES), FULL_SPAN, strm')
            end
      fun inline_PROD_3 (strm) = let
            val (special_RES, special_SPAN, strm') = special_NT(strm)
            val FULL_SPAN = (#1(special_SPAN), #2(special_SPAN))
            in
              ((special_RES), FULL_SPAN, strm')
            end
      fun inline_PROD_4 (strm) = let
            val (formctrl_RES, formctrl_SPAN, strm') = formctrl_NT(strm)
            val FULL_SPAN = (#1(formctrl_SPAN), #2(formctrl_SPAN))
            in
              ((formctrl_RES), FULL_SPAN, strm')
            end
      fun inline_PROD_5 (strm) = let
            val (cdata_RES, cdata_SPAN, strm') = cdata_NT(strm)
            val FULL_SPAN = (#1(cdata_SPAN), #2(cdata_SPAN))
            in
              ((cdata_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.COMMENT(_), _, strm') => inline_PROD_5(strm)
          | (Tok.PCDATA(_), _, strm') => inline_PROD_5(strm)
          | (Tok.CHAR_REF(_), _, strm') => inline_PROD_5(strm)
          | (Tok.ENTITY_REF(_), _, strm') => inline_PROD_5(strm)
          | (Tok.STARTA(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTAPPLET(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTBASEFONT(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTBDO(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTBR(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTFONT(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTIFRAME(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTIMG(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTMAP(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTOBJECT(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTQ(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTSCRIPT(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTSPAN(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTSUB(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTSUP(_), _, strm') => inline_PROD_3(strm)
          | (Tok.STARTB(_), _, strm') => inline_PROD_1(strm)
          | (Tok.STARTBIG(_), _, strm') => inline_PROD_1(strm)
          | (Tok.STARTI(_), _, strm') => inline_PROD_1(strm)
          | (Tok.STARTS(_), _, strm') => inline_PROD_1(strm)
          | (Tok.STARTSMALL(_), _, strm') => inline_PROD_1(strm)
          | (Tok.STARTSTRIKE(_), _, strm') => inline_PROD_1(strm)
          | (Tok.STARTTT(_), _, strm') => inline_PROD_1(strm)
          | (Tok.STARTU(_), _, strm') => inline_PROD_1(strm)
          | (Tok.STARTABBR(_), _, strm') => inline_PROD_2(strm)
          | (Tok.STARTACRONYM(_), _, strm') => inline_PROD_2(strm)
          | (Tok.STARTCITE(_), _, strm') => inline_PROD_2(strm)
          | (Tok.STARTCODE(_), _, strm') => inline_PROD_2(strm)
          | (Tok.STARTDFN(_), _, strm') => inline_PROD_2(strm)
          | (Tok.STARTEM(_), _, strm') => inline_PROD_2(strm)
          | (Tok.STARTKBD(_), _, strm') => inline_PROD_2(strm)
          | (Tok.STARTSAMP(_), _, strm') => inline_PROD_2(strm)
          | (Tok.STARTSTRONG(_), _, strm') => inline_PROD_2(strm)
          | (Tok.STARTVAR(_), _, strm') => inline_PROD_2(strm)
          | (Tok.STARTBUTTON(_), _, strm') => inline_PROD_4(strm)
          | (Tok.STARTINPUT(_), _, strm') => inline_PROD_4(strm)
          | (Tok.STARTLABEL(_), _, strm') => inline_PROD_4(strm)
          | (Tok.STARTSELECT(_), _, strm') => inline_PROD_4(strm)
          | (Tok.STARTTEXTAREA(_), _, strm') => inline_PROD_4(strm)
          | _ => fail()
        (* end case *))
      end
and formctrl_NT (strm) = let
      fun formctrl_PROD_1 (strm) = let
            val (input_RES, input_SPAN, strm') = input_NT(strm)
            val FULL_SPAN = (#1(input_SPAN), #2(input_SPAN))
            in
              ((input_RES), FULL_SPAN, strm')
            end
      fun formctrl_PROD_2 (strm) = let
            val (select_RES, select_SPAN, strm') = select_NT(strm)
            val FULL_SPAN = (#1(select_SPAN), #2(select_SPAN))
            in
              ((select_RES), FULL_SPAN, strm')
            end
      fun formctrl_PROD_3 (strm) = let
            val (textarea_RES, textarea_SPAN, strm') = textarea_NT(strm)
            val FULL_SPAN = (#1(textarea_SPAN), #2(textarea_SPAN))
            in
              ((textarea_RES), FULL_SPAN, strm')
            end
      fun formctrl_PROD_4 (strm) = let
            val (label_RES, label_SPAN, strm') = label_NT(strm)
            val FULL_SPAN = (#1(label_SPAN), #2(label_SPAN))
            in
              ((label_RES), FULL_SPAN, strm')
            end
      fun formctrl_PROD_5 (strm) = let
            val (button_RES, button_SPAN, strm') = button_NT(strm)
            val FULL_SPAN = (#1(button_SPAN), #2(button_SPAN))
            in
              ((button_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTBUTTON(_), _, strm') => formctrl_PROD_5(strm)
          | (Tok.STARTTEXTAREA(_), _, strm') => formctrl_PROD_3(strm)
          | (Tok.STARTINPUT(_), _, strm') => formctrl_PROD_1(strm)
          | (Tok.STARTSELECT(_), _, strm') => formctrl_PROD_2(strm)
          | (Tok.STARTLABEL(_), _, strm') => formctrl_PROD_4(strm)
          | _ => fail()
        (* end case *))
      end
and button_NT (strm) = let
      val (STARTBUTTON_RES, STARTBUTTON_SPAN, strm') = matchSTARTBUTTON(strm)
      fun button_PROD_1_SUBRULE_1_NT (strm) = let
            val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
            val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
            in
              ((flow_RES), FULL_SPAN, strm')
            end
      fun button_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (flow_RES, flow_SPAN, strm') = EBNF.closure(button_PROD_1_SUBRULE_1_PRED, button_PROD_1_SUBRULE_1_NT, strm')
      val (ENDBUTTON_RES, ENDBUTTON_SPAN, strm') = matchENDBUTTON(strm')
      val FULL_SPAN = (#1(STARTBUTTON_SPAN), #2(ENDBUTTON_SPAN))
      in
        (UserCode.button_PROD_1_ACT (STARTBUTTON_RES, flow_RES, ENDBUTTON_RES, STARTBUTTON_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), ENDBUTTON_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and flow_NT (strm) = let
      fun flow_PROD_1 (strm) = let
            val (block_RES, block_SPAN, strm') = block_NT(strm)
            val FULL_SPAN = (#1(block_SPAN), #2(block_SPAN))
            in
              ((block_RES), FULL_SPAN, strm')
            end
      fun flow_PROD_2 (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.COMMENT(_), _, strm') => flow_PROD_2(strm)
          | (Tok.PCDATA(_), _, strm') => flow_PROD_2(strm)
          | (Tok.CHAR_REF(_), _, strm') => flow_PROD_2(strm)
          | (Tok.ENTITY_REF(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTA(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTABBR(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTACRONYM(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTAPPLET(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTB(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTBASEFONT(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTBDO(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTBIG(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTBR(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTBUTTON(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTCITE(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTCODE(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTDFN(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTEM(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTFONT(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTI(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTIFRAME(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTIMG(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTINPUT(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTKBD(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTLABEL(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTMAP(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTOBJECT(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTQ(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTS(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTSAMP(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTSCRIPT(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTSELECT(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTSMALL(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTSPAN(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTSTRIKE(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTSTRONG(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTSUB(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTSUP(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTTEXTAREA(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTTT(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTU(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTVAR(_), _, strm') => flow_PROD_2(strm)
          | (Tok.STARTADDRESS(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTBLOCKQUOTE(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTCENTER(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTDIR(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTDIV(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTDL(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTFIELDSET(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTFORM(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTH1(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTH2(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTH3(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTH4(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTH5(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTH6(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTHR(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTISINDEX(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTMENU(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTNOSCRIPT(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTOL(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTP(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTPRE(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTTABLE(_), _, strm') => flow_PROD_1(strm)
          | (Tok.STARTUL(_), _, strm') => flow_PROD_1(strm)
          | _ => fail()
        (* end case *))
      end
and block_NT (strm) = let
      fun block_PROD_1 (strm) = let
            val (p_RES, p_SPAN, strm') = p_NT(strm)
            val FULL_SPAN = (#1(p_SPAN), #2(p_SPAN))
            in
              ((p_RES), FULL_SPAN, strm')
            end
      fun block_PROD_2 (strm) = let
            val (heading_RES, heading_SPAN, strm') = heading_NT(strm)
            val FULL_SPAN = (#1(heading_SPAN), #2(heading_SPAN))
            in
              ((heading_RES), FULL_SPAN, strm')
            end
      fun block_PROD_3 (strm) = let
            val (list_RES, list_SPAN, strm') = list_NT(strm)
            val FULL_SPAN = (#1(list_SPAN), #2(list_SPAN))
            in
              ((list_RES), FULL_SPAN, strm')
            end
      fun block_PROD_4 (strm) = let
            val (preformatted_RES, preformatted_SPAN, strm') = preformatted_NT(strm)
            val FULL_SPAN = (#1(preformatted_SPAN), #2(preformatted_SPAN))
            in
              ((preformatted_RES), FULL_SPAN, strm')
            end
      fun block_PROD_5 (strm) = let
            val (dl_RES, dl_SPAN, strm') = dl_NT(strm)
            val FULL_SPAN = (#1(dl_SPAN), #2(dl_SPAN))
            in
              ((dl_RES), FULL_SPAN, strm')
            end
      fun block_PROD_6 (strm) = let
            val (div_RES, div_SPAN, strm') = div_NT(strm)
            val FULL_SPAN = (#1(div_SPAN), #2(div_SPAN))
            in
              ((div_RES), FULL_SPAN, strm')
            end
      fun block_PROD_7 (strm) = let
            val (noscript_RES, noscript_SPAN, strm') = noscript_NT(strm)
            val FULL_SPAN = (#1(noscript_SPAN), #2(noscript_SPAN))
            in
              ((noscript_RES), FULL_SPAN, strm')
            end
      fun block_PROD_8 (strm) = let
            val (blockquote_RES, blockquote_SPAN, strm') = blockquote_NT(strm)
            val FULL_SPAN = (#1(blockquote_SPAN), #2(blockquote_SPAN))
            in
              ((blockquote_RES), FULL_SPAN, strm')
            end
      fun block_PROD_9 (strm) = let
            val (form_RES, form_SPAN, strm') = form_NT(strm)
            val FULL_SPAN = (#1(form_SPAN), #2(form_SPAN))
            in
              ((form_RES), FULL_SPAN, strm')
            end
      fun block_PROD_10 (strm) = let
            val (hr_RES, hr_SPAN, strm') = hr_NT(strm)
            val FULL_SPAN = (#1(hr_SPAN), #2(hr_SPAN))
            in
              ((hr_RES), FULL_SPAN, strm')
            end
      fun block_PROD_11 (strm) = let
            val (table_RES, table_SPAN, strm') = table_NT(strm)
            val FULL_SPAN = (#1(table_SPAN), #2(table_SPAN))
            in
              ((table_RES), FULL_SPAN, strm')
            end
      fun block_PROD_12 (strm) = let
            val (fieldset_RES, fieldset_SPAN, strm') = fieldset_NT(strm)
            val FULL_SPAN = (#1(fieldset_SPAN), #2(fieldset_SPAN))
            in
              ((fieldset_RES), FULL_SPAN, strm')
            end
      fun block_PROD_13 (strm) = let
            val (address_RES, address_SPAN, strm') = address_NT(strm)
            val FULL_SPAN = (#1(address_SPAN), #2(address_SPAN))
            in
              ((address_RES), FULL_SPAN, strm')
            end
      fun block_PROD_14 (strm) = let
            val (block_loose_RES, block_loose_SPAN, strm') = block_loose_NT(strm)
            val FULL_SPAN = (#1(block_loose_SPAN), #2(block_loose_SPAN))
            in
              ((block_loose_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTCENTER(_), _, strm') => block_PROD_14(strm)
          | (Tok.STARTISINDEX(_), _, strm') => block_PROD_14(strm)
          | (Tok.STARTFIELDSET(_), _, strm') => block_PROD_12(strm)
          | (Tok.STARTHR(_), _, strm') => block_PROD_10(strm)
          | (Tok.STARTBLOCKQUOTE(_), _, strm') => block_PROD_8(strm)
          | (Tok.STARTDIV(_), _, strm') => block_PROD_6(strm)
          | (Tok.STARTPRE(_), _, strm') => block_PROD_4(strm)
          | (Tok.STARTH1(_), _, strm') => block_PROD_2(strm)
          | (Tok.STARTH2(_), _, strm') => block_PROD_2(strm)
          | (Tok.STARTH3(_), _, strm') => block_PROD_2(strm)
          | (Tok.STARTH4(_), _, strm') => block_PROD_2(strm)
          | (Tok.STARTH5(_), _, strm') => block_PROD_2(strm)
          | (Tok.STARTH6(_), _, strm') => block_PROD_2(strm)
          | (Tok.STARTP(_), _, strm') => block_PROD_1(strm)
          | (Tok.STARTDIR(_), _, strm') => block_PROD_3(strm)
          | (Tok.STARTMENU(_), _, strm') => block_PROD_3(strm)
          | (Tok.STARTOL(_), _, strm') => block_PROD_3(strm)
          | (Tok.STARTUL(_), _, strm') => block_PROD_3(strm)
          | (Tok.STARTDL(_), _, strm') => block_PROD_5(strm)
          | (Tok.STARTNOSCRIPT(_), _, strm') => block_PROD_7(strm)
          | (Tok.STARTFORM(_), _, strm') => block_PROD_9(strm)
          | (Tok.STARTTABLE(_), _, strm') => block_PROD_11(strm)
          | (Tok.STARTADDRESS(_), _, strm') => block_PROD_13(strm)
          | _ => fail()
        (* end case *))
      end
and block_loose_NT (strm) = let
      fun block_loose_PROD_1 (strm) = let
            val (center_RES, center_SPAN, strm') = center_NT(strm)
            val FULL_SPAN = (#1(center_SPAN), #2(center_SPAN))
            in
              ((center_RES), FULL_SPAN, strm')
            end
      fun block_loose_PROD_2 (strm) = let
            val (isindex_RES, isindex_SPAN, strm') = isindex_NT(strm)
            val FULL_SPAN = (#1(isindex_SPAN), #2(isindex_SPAN))
            in
              ((isindex_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTISINDEX(_), _, strm') => block_loose_PROD_2(strm)
          | (Tok.STARTCENTER(_), _, strm') => block_loose_PROD_1(strm)
          | _ => fail()
        (* end case *))
      end
and center_NT (strm) = let
      val (STARTCENTER_RES, STARTCENTER_SPAN, strm') = matchSTARTCENTER(strm)
      fun center_PROD_1_SUBRULE_1_NT (strm) = let
            val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
            val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
            in
              ((flow_RES), FULL_SPAN, strm')
            end
      fun center_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (flow_RES, flow_SPAN, strm') = EBNF.closure(center_PROD_1_SUBRULE_1_PRED, center_PROD_1_SUBRULE_1_NT, strm')
      val (ENDCENTER_RES, ENDCENTER_SPAN, strm') = matchENDCENTER(strm')
      val FULL_SPAN = (#1(STARTCENTER_SPAN), #2(ENDCENTER_SPAN))
      in
        (UserCode.center_PROD_1_ACT (flow_RES, STARTCENTER_RES, ENDCENTER_RES, flow_SPAN : (Lex.pos * Lex.pos), STARTCENTER_SPAN : (Lex.pos * Lex.pos), ENDCENTER_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and address_NT (strm) = let
      val (STARTADDRESS_RES, STARTADDRESS_SPAN, strm') = matchSTARTADDRESS(strm)
      fun address_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun address_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(address_PROD_1_SUBRULE_1_PRED, address_PROD_1_SUBRULE_1_NT, strm')
      val (ENDADDRESS_RES, ENDADDRESS_SPAN, strm') = matchENDADDRESS(strm')
      val FULL_SPAN = (#1(STARTADDRESS_SPAN), #2(ENDADDRESS_SPAN))
      in
        (UserCode.address_PROD_1_ACT (STARTADDRESS_RES, ENDADDRESS_RES, inline_RES, STARTADDRESS_SPAN : (Lex.pos * Lex.pos), ENDADDRESS_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and fieldset_NT (strm) = let
      val (STARTFIELDSET_RES, STARTFIELDSET_SPAN, strm') = matchSTARTFIELDSET(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      val (legend_RES, legend_SPAN, strm') = legend_NT(strm')
      fun fieldset_PROD_1_SUBRULE_1_NT (strm) = let
            val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
            val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
            in
              ((flow_RES), FULL_SPAN, strm')
            end
      fun fieldset_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (flow_RES, flow_SPAN, strm') = EBNF.closure(fieldset_PROD_1_SUBRULE_1_PRED, fieldset_PROD_1_SUBRULE_1_NT, strm')
      val (ENDFIELDSET_RES, ENDFIELDSET_SPAN, strm') = matchENDFIELDSET(strm')
      val FULL_SPAN = (#1(STARTFIELDSET_SPAN), #2(ENDFIELDSET_SPAN))
      in
        (UserCode.fieldset_PROD_1_ACT (flow_RES, STARTFIELDSET_RES, ENDFIELDSET_RES, legend_RES, cdata_opt_RES, flow_SPAN : (Lex.pos * Lex.pos), STARTFIELDSET_SPAN : (Lex.pos * Lex.pos), ENDFIELDSET_SPAN : (Lex.pos * Lex.pos), legend_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and legend_NT (strm) = let
      val (STARTLEGEND_RES, STARTLEGEND_SPAN, strm') = matchSTARTLEGEND(strm)
      fun legend_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun legend_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(legend_PROD_1_SUBRULE_1_PRED, legend_PROD_1_SUBRULE_1_NT, strm')
      val (ENDLEGEND_RES, ENDLEGEND_SPAN, strm') = matchENDLEGEND(strm')
      val FULL_SPAN = (#1(STARTLEGEND_SPAN), #2(ENDLEGEND_SPAN))
      in
        (UserCode.legend_PROD_1_ACT (STARTLEGEND_RES, inline_RES, ENDLEGEND_RES, STARTLEGEND_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDLEGEND_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and table_NT (strm) = let
      val (STARTTABLE_RES, STARTTABLE_SPAN, strm') = matchSTARTTABLE(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun table_PROD_1_SUBRULE_1_NT (strm) = let
            val (caption_RES, caption_SPAN, strm') = caption_NT(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(caption_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.table_PROD_1_SUBRULE_1_PROD_1_ACT (STARTTABLE_RES, cdata_opt_RES, caption_RES, STARTTABLE_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), caption_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun table_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTCAPTION(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.optional(table_PROD_1_SUBRULE_1_PRED, table_PROD_1_SUBRULE_1_NT, strm')
      val (col_or_colgroups_RES, col_or_colgroups_SPAN, strm') = col_or_colgroups_NT(strm')
      val (table_content_RES, table_content_SPAN, strm') = table_content_NT(strm')
      val (ENDTABLE_RES, ENDTABLE_SPAN, strm') = matchENDTABLE(strm')
      val FULL_SPAN = (#1(STARTTABLE_SPAN), #2(ENDTABLE_SPAN))
      in
        (UserCode.table_PROD_1_ACT (SR_RES, ENDTABLE_RES, STARTTABLE_RES, col_or_colgroups_RES, table_content_RES, cdata_opt_RES, SR_SPAN : (Lex.pos * Lex.pos), ENDTABLE_SPAN : (Lex.pos * Lex.pos), STARTTABLE_SPAN : (Lex.pos * Lex.pos), col_or_colgroups_SPAN : (Lex.pos * Lex.pos), table_content_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and table_content_NT (strm) = let
      fun table_content_PROD_1 (strm) = let
            val (thead_RES, thead_SPAN, strm') = thead_NT(strm)
            fun table_content_PROD_1_SUBRULE_1_NT (strm) = let
                  val (tfoot_RES, tfoot_SPAN, strm') = tfoot_NT(strm)
                  val FULL_SPAN = (#1(tfoot_SPAN), #2(tfoot_SPAN))
                  in
                    ((tfoot_RES), FULL_SPAN, strm')
                  end
            fun table_content_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
                   of (Tok.STARTTFOOT(_), _, strm') => true
                    | _ => false
                  (* end case *))
            val (tfoot_RES, tfoot_SPAN, strm') = EBNF.optional(table_content_PROD_1_SUBRULE_1_PRED, table_content_PROD_1_SUBRULE_1_NT, strm')
            val (tbodies_RES, tbodies_SPAN, strm') = tbodies_NT(strm')
            val FULL_SPAN = (#1(thead_SPAN), #2(tbodies_SPAN))
            in
              (UserCode.table_content_PROD_1_ACT (tbodies_RES, tfoot_RES, thead_RES, tbodies_SPAN : (Lex.pos * Lex.pos), tfoot_SPAN : (Lex.pos * Lex.pos), thead_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun table_content_PROD_2 (strm) = let
            val (tfoot_RES, tfoot_SPAN, strm') = tfoot_NT(strm)
            val (tbodies_RES, tbodies_SPAN, strm') = tbodies_NT(strm')
            val FULL_SPAN = (#1(tfoot_SPAN), #2(tbodies_SPAN))
            in
              (UserCode.table_content_PROD_2_ACT (tbodies_RES, tfoot_RES, tbodies_SPAN : (Lex.pos * Lex.pos), tfoot_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun table_content_PROD_3 (strm) = let
            val (tbodies_nostart_RES, tbodies_nostart_SPAN, strm') = tbodies_nostart_NT(strm)
            val FULL_SPAN = (#1(tbodies_nostart_SPAN),
              #2(tbodies_nostart_SPAN))
            in
              ((tbodies_nostart_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTTBODY(_), _, strm') => table_content_PROD_3(strm)
          | (Tok.STARTTR(_), _, strm') => table_content_PROD_3(strm)
          | (Tok.STARTTHEAD(_), _, strm') => table_content_PROD_1(strm)
          | (Tok.STARTTFOOT(_), _, strm') => table_content_PROD_2(strm)
          | _ => fail()
        (* end case *))
      end
and tbodies_nostart_NT (strm) = let
      fun tbodies_nostart_PROD_1_SUBRULE_1_NT (strm) = let
            val (STARTTBODY_RES, STARTTBODY_SPAN, strm') = matchSTARTTBODY(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(STARTTBODY_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.tbodies_nostart_PROD_1_SUBRULE_1_PROD_1_ACT (STARTTBODY_RES, cdata_opt_RES, STARTTBODY_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun tbodies_nostart_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTTBODY(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.optional(tbodies_nostart_PROD_1_SUBRULE_1_PRED, tbodies_nostart_PROD_1_SUBRULE_1_NT, strm)
      fun tbodies_nostart_PROD_1_SUBRULE_2_NT (strm) = let
            val (tr_RES, tr_SPAN, strm') = tr_NT(strm)
            val FULL_SPAN = (#1(tr_SPAN), #2(tr_SPAN))
            in
              ((tr_RES), FULL_SPAN, strm')
            end
      fun tbodies_nostart_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.STARTTR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (tr_RES, tr_SPAN, strm') = EBNF.posclos(tbodies_nostart_PROD_1_SUBRULE_2_PRED, tbodies_nostart_PROD_1_SUBRULE_2_NT, strm')
      fun tbodies_nostart_PROD_1_SUBRULE_3_NT (strm) = let
            val (tbodies_rest_RES, tbodies_rest_SPAN, strm') = tbodies_rest_NT(strm)
            val FULL_SPAN = (#1(tbodies_rest_SPAN), #2(tbodies_rest_SPAN))
            in
              ((tbodies_rest_RES), FULL_SPAN, strm')
            end
      fun tbodies_nostart_PROD_1_SUBRULE_3_PRED (strm) = (case (lex(strm))
             of (Tok.STARTTBODY(_), _, strm') => true
              | (Tok.ENDTBODY, _, strm') => true
              | _ => false
            (* end case *))
      val (tbodies_rest_RES, tbodies_rest_SPAN, strm') = EBNF.optional(tbodies_nostart_PROD_1_SUBRULE_3_PRED, tbodies_nostart_PROD_1_SUBRULE_3_NT, strm')
      val FULL_SPAN = (#1(SR_SPAN), #2(tbodies_rest_SPAN))
      in
        (UserCode.tbodies_nostart_PROD_1_ACT (SR_RES, tr_RES, tbodies_rest_RES, SR_SPAN : (Lex.pos * Lex.pos), tr_SPAN : (Lex.pos * Lex.pos), tbodies_rest_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and tbodies_rest_NT (strm) = let
      fun tbodies_rest_PROD_1 (strm) = let
            val (ENDTBODY_RES, ENDTBODY_SPAN, strm') = matchENDTBODY(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            fun tbodies_rest_PROD_1_SUBRULE_1_NT (strm) = let
                  val (tbodies_RES, tbodies_SPAN, strm') = tbodies_NT(strm)
                  val FULL_SPAN = (#1(tbodies_SPAN), #2(tbodies_SPAN))
                  in
                    ((tbodies_RES), FULL_SPAN, strm')
                  end
            fun tbodies_rest_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
                   of (Tok.STARTTBODY(_), _, strm') => true
                    | _ => false
                  (* end case *))
            val (tbodies_RES, tbodies_SPAN, strm') = EBNF.optional(tbodies_rest_PROD_1_SUBRULE_1_PRED, tbodies_rest_PROD_1_SUBRULE_1_NT, strm')
            val FULL_SPAN = (#1(ENDTBODY_SPAN), #2(tbodies_SPAN))
            in
              (UserCode.tbodies_rest_PROD_1_ACT (ENDTBODY_RES, tbodies_RES, cdata_opt_RES, ENDTBODY_SPAN : (Lex.pos * Lex.pos), tbodies_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun tbodies_rest_PROD_2 (strm) = let
            val (STARTTBODY_RES, STARTTBODY_SPAN, strm') = matchSTARTTBODY(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            fun tbodies_rest_PROD_2_SUBRULE_1_NT (strm) = let
                  val (tr_RES, tr_SPAN, strm') = tr_NT(strm)
                  val FULL_SPAN = (#1(tr_SPAN), #2(tr_SPAN))
                  in
                    ((tr_RES), FULL_SPAN, strm')
                  end
            fun tbodies_rest_PROD_2_SUBRULE_1_PRED (strm) = (case (lex(strm))
                   of (Tok.STARTTR(_), _, strm') => true
                    | _ => false
                  (* end case *))
            val (tr_RES, tr_SPAN, strm') = EBNF.posclos(tbodies_rest_PROD_2_SUBRULE_1_PRED, tbodies_rest_PROD_2_SUBRULE_1_NT, strm')
            fun tbodies_rest_PROD_2_SUBRULE_2_NT (strm) = let
                  val (tbodies_rest_RES, tbodies_rest_SPAN, strm') = tbodies_rest_NT(strm)
                  val FULL_SPAN = (#1(tbodies_rest_SPAN),
                    #2(tbodies_rest_SPAN))
                  in
                    ((tbodies_rest_RES), FULL_SPAN, strm')
                  end
            fun tbodies_rest_PROD_2_SUBRULE_2_PRED (strm) = (case (lex(strm))
                   of (Tok.STARTTBODY(_), _, strm') => true
                    | (Tok.ENDTBODY, _, strm') => true
                    | _ => false
                  (* end case *))
            val (tbodies_rest_RES, tbodies_rest_SPAN, strm') = EBNF.optional(tbodies_rest_PROD_2_SUBRULE_2_PRED, tbodies_rest_PROD_2_SUBRULE_2_NT, strm')
            val FULL_SPAN = (#1(STARTTBODY_SPAN), #2(tbodies_rest_SPAN))
            in
              (UserCode.tbodies_rest_PROD_2_ACT (tr_RES, STARTTBODY_RES, tbodies_rest_RES, cdata_opt_RES, tr_SPAN : (Lex.pos * Lex.pos), STARTTBODY_SPAN : (Lex.pos * Lex.pos), tbodies_rest_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTTBODY(_), _, strm') => tbodies_rest_PROD_2(strm)
          | (Tok.ENDTBODY, _, strm') => tbodies_rest_PROD_1(strm)
          | _ => fail()
        (* end case *))
      end
and tr_NT (strm) = let
      val (STARTTR_RES, STARTTR_SPAN, strm') = matchSTARTTR(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun tr_PROD_1_SUBRULE_1_NT (strm) = let
            fun tr_PROD_1_SUBRULE_1_PROD_1 (strm) = let
                  val (th_RES, th_SPAN, strm') = th_NT(strm)
                  val FULL_SPAN = (#1(th_SPAN), #2(th_SPAN))
                  in
                    ((th_RES), FULL_SPAN, strm')
                  end
            fun tr_PROD_1_SUBRULE_1_PROD_2 (strm) = let
                  val (td_RES, td_SPAN, strm') = td_NT(strm)
                  val FULL_SPAN = (#1(td_SPAN), #2(td_SPAN))
                  in
                    ((td_RES), FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.STARTTD(_), _, strm') =>
                    tr_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTTH(_), _, strm') =>
                    tr_PROD_1_SUBRULE_1_PROD_1(strm)
                | _ => fail()
              (* end case *))
            end
      fun tr_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTTD(_), _, strm') => true
              | (Tok.STARTTH(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR1_RES, SR1_SPAN, strm') = EBNF.posclos(tr_PROD_1_SUBRULE_1_PRED, tr_PROD_1_SUBRULE_1_NT, strm')
      fun tr_PROD_1_SUBRULE_2_NT (strm) = let
            val (ENDTR_RES, ENDTR_SPAN, strm') = matchENDTR(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(ENDTR_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.tr_PROD_1_SUBRULE_2_PROD_1_ACT (SR1_RES, STARTTR_RES, ENDTR_RES, cdata_opt_RES, SR1_SPAN : (Lex.pos * Lex.pos), STARTTR_SPAN : (Lex.pos * Lex.pos), ENDTR_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun tr_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.ENDTR, _, strm') => true
              | _ => false
            (* end case *))
      val (SR2_RES, SR2_SPAN, strm') = EBNF.optional(tr_PROD_1_SUBRULE_2_PRED, tr_PROD_1_SUBRULE_2_NT, strm')
      val FULL_SPAN = (#1(STARTTR_SPAN), #2(SR2_SPAN))
      in
        (UserCode.tr_PROD_1_ACT (SR1_RES, SR2_RES, STARTTR_RES, cdata_opt_RES, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), STARTTR_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and td_NT (strm) = let
      val (STARTTD_RES, STARTTD_SPAN, strm') = matchSTARTTD(strm)
      fun td_PROD_1_SUBRULE_1_NT (strm) = let
            val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
            val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
            in
              ((flow_RES), FULL_SPAN, strm')
            end
      fun td_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (flow_RES, flow_SPAN, strm') = EBNF.closure(td_PROD_1_SUBRULE_1_PRED, td_PROD_1_SUBRULE_1_NT, strm')
      fun td_PROD_1_SUBRULE_2_NT (strm) = let
            val (ENDTD_RES, ENDTD_SPAN, strm') = matchENDTD(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(ENDTD_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.td_PROD_1_SUBRULE_2_PROD_1_ACT (STARTTD_RES, flow_RES, ENDTD_RES, cdata_opt_RES, STARTTD_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), ENDTD_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun td_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.ENDTD, _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.optional(td_PROD_1_SUBRULE_2_PRED, td_PROD_1_SUBRULE_2_NT, strm')
      val FULL_SPAN = (#1(STARTTD_SPAN), #2(SR_SPAN))
      in
        (UserCode.td_PROD_1_ACT (SR_RES, STARTTD_RES, flow_RES, SR_SPAN : (Lex.pos * Lex.pos), STARTTD_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and th_NT (strm) = let
      val (STARTTH_RES, STARTTH_SPAN, strm') = matchSTARTTH(strm)
      fun th_PROD_1_SUBRULE_1_NT (strm) = let
            val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
            val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
            in
              ((flow_RES), FULL_SPAN, strm')
            end
      fun th_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (flow_RES, flow_SPAN, strm') = EBNF.closure(th_PROD_1_SUBRULE_1_PRED, th_PROD_1_SUBRULE_1_NT, strm')
      fun th_PROD_1_SUBRULE_2_NT (strm) = let
            val (ENDTH_RES, ENDTH_SPAN, strm') = matchENDTH(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(ENDTH_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.th_PROD_1_SUBRULE_2_PROD_1_ACT (STARTTH_RES, flow_RES, ENDTH_RES, cdata_opt_RES, STARTTH_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), ENDTH_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun th_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.ENDTH, _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.optional(th_PROD_1_SUBRULE_2_PRED, th_PROD_1_SUBRULE_2_NT, strm')
      val FULL_SPAN = (#1(STARTTH_SPAN), #2(SR_SPAN))
      in
        (UserCode.th_PROD_1_ACT (SR_RES, STARTTH_RES, flow_RES, SR_SPAN : (Lex.pos * Lex.pos), STARTTH_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and tbodies_NT (strm) = let
      val (STARTTBODY_RES, STARTTBODY_SPAN, strm') = matchSTARTTBODY(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun tbodies_PROD_1_SUBRULE_1_NT (strm) = let
            val (tr_RES, tr_SPAN, strm') = tr_NT(strm)
            val FULL_SPAN = (#1(tr_SPAN), #2(tr_SPAN))
            in
              ((tr_RES), FULL_SPAN, strm')
            end
      fun tbodies_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTTR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (tr_RES, tr_SPAN, strm') = EBNF.posclos(tbodies_PROD_1_SUBRULE_1_PRED, tbodies_PROD_1_SUBRULE_1_NT, strm')
      val (tbodies_rest_RES, tbodies_rest_SPAN, strm') = tbodies_rest_NT(strm')
      val FULL_SPAN = (#1(STARTTBODY_SPAN), #2(tbodies_rest_SPAN))
      in
        (UserCode.tbodies_PROD_1_ACT (tr_RES, STARTTBODY_RES, tbodies_rest_RES, cdata_opt_RES, tr_SPAN : (Lex.pos * Lex.pos), STARTTBODY_SPAN : (Lex.pos * Lex.pos), tbodies_rest_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and tfoot_NT (strm) = let
      val (STARTTFOOT_RES, STARTTFOOT_SPAN, strm') = matchSTARTTFOOT(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun tfoot_PROD_1_SUBRULE_1_NT (strm) = let
            val (tr_RES, tr_SPAN, strm') = tr_NT(strm)
            val FULL_SPAN = (#1(tr_SPAN), #2(tr_SPAN))
            in
              ((tr_RES), FULL_SPAN, strm')
            end
      fun tfoot_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTTR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (tr_RES, tr_SPAN, strm') = EBNF.posclos(tfoot_PROD_1_SUBRULE_1_PRED, tfoot_PROD_1_SUBRULE_1_NT, strm')
      fun tfoot_PROD_1_SUBRULE_2_NT (strm) = let
            val (ENDTFOOT_RES, ENDTFOOT_SPAN, strm') = matchENDTFOOT(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(ENDTFOOT_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.tfoot_PROD_1_SUBRULE_2_PROD_1_ACT (tr_RES, ENDTFOOT_RES, STARTTFOOT_RES, cdata_opt_RES, tr_SPAN : (Lex.pos * Lex.pos), ENDTFOOT_SPAN : (Lex.pos * Lex.pos), STARTTFOOT_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun tfoot_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.ENDTFOOT, _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.optional(tfoot_PROD_1_SUBRULE_2_PRED, tfoot_PROD_1_SUBRULE_2_NT, strm')
      val FULL_SPAN = (#1(STARTTFOOT_SPAN), #2(SR_SPAN))
      in
        (UserCode.tfoot_PROD_1_ACT (SR_RES, tr_RES, STARTTFOOT_RES, cdata_opt_RES, SR_SPAN : (Lex.pos * Lex.pos), tr_SPAN : (Lex.pos * Lex.pos), STARTTFOOT_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and thead_NT (strm) = let
      val (STARTTHEAD_RES, STARTTHEAD_SPAN, strm') = matchSTARTTHEAD(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun thead_PROD_1_SUBRULE_1_NT (strm) = let
            val (tr_RES, tr_SPAN, strm') = tr_NT(strm)
            val FULL_SPAN = (#1(tr_SPAN), #2(tr_SPAN))
            in
              ((tr_RES), FULL_SPAN, strm')
            end
      fun thead_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTTR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (tr_RES, tr_SPAN, strm') = EBNF.posclos(thead_PROD_1_SUBRULE_1_PRED, thead_PROD_1_SUBRULE_1_NT, strm')
      fun thead_PROD_1_SUBRULE_2_NT (strm) = let
            val (ENDTHEAD_RES, ENDTHEAD_SPAN, strm') = matchENDTHEAD(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(ENDTHEAD_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.thead_PROD_1_SUBRULE_2_PROD_1_ACT (tr_RES, ENDTHEAD_RES, STARTTHEAD_RES, cdata_opt_RES, tr_SPAN : (Lex.pos * Lex.pos), ENDTHEAD_SPAN : (Lex.pos * Lex.pos), STARTTHEAD_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun thead_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.ENDTHEAD, _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.optional(thead_PROD_1_SUBRULE_2_PRED, thead_PROD_1_SUBRULE_2_NT, strm')
      val FULL_SPAN = (#1(STARTTHEAD_SPAN), #2(SR_SPAN))
      in
        (UserCode.thead_PROD_1_ACT (SR_RES, tr_RES, STARTTHEAD_RES, cdata_opt_RES, SR_SPAN : (Lex.pos * Lex.pos), tr_SPAN : (Lex.pos * Lex.pos), STARTTHEAD_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and caption_NT (strm) = let
      val (STARTCAPTION_RES, STARTCAPTION_SPAN, strm') = matchSTARTCAPTION(strm)
      fun caption_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun caption_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(caption_PROD_1_SUBRULE_1_PRED, caption_PROD_1_SUBRULE_1_NT, strm')
      val (ENDCAPTION_RES, ENDCAPTION_SPAN, strm') = matchENDCAPTION(strm')
      val FULL_SPAN = (#1(STARTCAPTION_SPAN), #2(ENDCAPTION_SPAN))
      in
        (UserCode.caption_PROD_1_ACT (STARTCAPTION_RES, inline_RES, ENDCAPTION_RES, STARTCAPTION_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDCAPTION_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and form_NT (strm) = let
      val (STARTFORM_RES, STARTFORM_SPAN, strm') = matchSTARTFORM(strm)
      fun form_PROD_1_SUBRULE_1_NT (strm) = let
            fun form_PROD_1_SUBRULE_1_PROD_1 (strm) = let
                  val (cdata_RES, cdata_SPAN, strm') = cdata_NT(strm)
                  val FULL_SPAN = (#1(cdata_SPAN), #2(cdata_SPAN))
                  in
                    ((cdata_RES), FULL_SPAN, strm')
                  end
            fun form_PROD_1_SUBRULE_1_PROD_2 (strm) = let
                  val (block_RES, block_SPAN, strm') = block_NT(strm)
                  val FULL_SPAN = (#1(block_SPAN), #2(block_SPAN))
                  in
                    ((block_RES), FULL_SPAN, strm')
                  end
            fun form_PROD_1_SUBRULE_1_PROD_3 (strm) = let
                  val (script_RES, script_SPAN, strm') = script_NT(strm)
                  val FULL_SPAN = (#1(script_SPAN), #2(script_SPAN))
                  in
                    ((script_RES), FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.STARTSCRIPT(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_3(strm)
                | (Tok.COMMENT(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.PCDATA(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.CHAR_REF(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.ENTITY_REF(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTADDRESS(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBLOCKQUOTE(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTCENTER(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDIR(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDIV(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDL(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTFIELDSET(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTFORM(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH1(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH2(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH3(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH4(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH5(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH6(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTHR(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTISINDEX(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTMENU(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTNOSCRIPT(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTOL(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTP(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTPRE(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTTABLE(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTUL(_), _, strm') =>
                    form_PROD_1_SUBRULE_1_PROD_2(strm)
                | _ => fail()
              (* end case *))
            end
      fun form_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.posclos(form_PROD_1_SUBRULE_1_PRED, form_PROD_1_SUBRULE_1_NT, strm')
      val (ENDFORM_RES, ENDFORM_SPAN, strm') = matchENDFORM(strm')
      val FULL_SPAN = (#1(STARTFORM_SPAN), #2(ENDFORM_SPAN))
      in
        (UserCode.form_PROD_1_ACT (SR_RES, ENDFORM_RES, STARTFORM_RES, SR_SPAN : (Lex.pos * Lex.pos), ENDFORM_SPAN : (Lex.pos * Lex.pos), STARTFORM_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and blockquote_NT (strm) = let
      val (STARTBLOCKQUOTE_RES, STARTBLOCKQUOTE_SPAN, strm') = matchSTARTBLOCKQUOTE(strm)
      fun blockquote_PROD_1_SUBRULE_1_NT (strm) = let
            fun blockquote_PROD_1_SUBRULE_1_PROD_1 (strm) = let
                  val (block_RES, block_SPAN, strm') = block_NT(strm)
                  val FULL_SPAN = (#1(block_SPAN), #2(block_SPAN))
                  in
                    ((block_RES), FULL_SPAN, strm')
                  end
            fun blockquote_PROD_1_SUBRULE_1_PROD_2 (strm) = let
                  val (script_RES, script_SPAN, strm') = script_NT(strm)
                  val FULL_SPAN = (#1(script_SPAN), #2(script_SPAN))
                  in
                    ((script_RES), FULL_SPAN, strm')
                  end
            fun blockquote_PROD_1_SUBRULE_1_PROD_3 (strm) = let
                  val (cdata_RES, cdata_SPAN, strm') = cdata_NT(strm)
                  val FULL_SPAN = (#1(cdata_SPAN), #2(cdata_SPAN))
                  in
                    ((cdata_RES), FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.COMMENT(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_3(strm)
                | (Tok.PCDATA(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_3(strm)
                | (Tok.CHAR_REF(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_3(strm)
                | (Tok.ENTITY_REF(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_3(strm)
                | (Tok.STARTADDRESS(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTBLOCKQUOTE(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTCENTER(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTDIR(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTDIV(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTDL(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTFIELDSET(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTFORM(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTH1(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTH2(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTH3(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTH4(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTH5(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTH6(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTHR(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTISINDEX(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTMENU(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTNOSCRIPT(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTOL(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTP(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTPRE(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTTABLE(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTUL(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTSCRIPT(_), _, strm') =>
                    blockquote_PROD_1_SUBRULE_1_PROD_2(strm)
                | _ => fail()
              (* end case *))
            end
      fun blockquote_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.posclos(blockquote_PROD_1_SUBRULE_1_PRED, blockquote_PROD_1_SUBRULE_1_NT, strm')
      val (ENDBLOCKQUOTE_RES, ENDBLOCKQUOTE_SPAN, strm') = matchENDBLOCKQUOTE(strm')
      val FULL_SPAN = (#1(STARTBLOCKQUOTE_SPAN), #2(ENDBLOCKQUOTE_SPAN))
      in
        (UserCode.blockquote_PROD_1_ACT (SR_RES, ENDBLOCKQUOTE_RES, STARTBLOCKQUOTE_RES, SR_SPAN : (Lex.pos * Lex.pos), ENDBLOCKQUOTE_SPAN : (Lex.pos * Lex.pos), STARTBLOCKQUOTE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and noscript_NT (strm) = let
      val (STARTNOSCRIPT_RES, STARTNOSCRIPT_SPAN, strm') = matchSTARTNOSCRIPT(strm)
      fun noscript_PROD_1_SUBRULE_1_NT (strm) = let
            fun noscript_PROD_1_SUBRULE_1_PROD_1 (strm) = let
                  val (cdata_RES, cdata_SPAN, strm') = cdata_NT(strm)
                  val FULL_SPAN = (#1(cdata_SPAN), #2(cdata_SPAN))
                  in
                    ((cdata_RES), FULL_SPAN, strm')
                  end
            fun noscript_PROD_1_SUBRULE_1_PROD_2 (strm) = let
                  val (block_RES, block_SPAN, strm') = block_NT(strm)
                  val FULL_SPAN = (#1(block_SPAN), #2(block_SPAN))
                  in
                    ((block_RES), FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.STARTADDRESS(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBLOCKQUOTE(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTCENTER(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDIR(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDIV(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDL(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTFIELDSET(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTFORM(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH1(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH2(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH3(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH4(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH5(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH6(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTHR(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTISINDEX(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTMENU(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTNOSCRIPT(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTOL(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTP(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTPRE(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTTABLE(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTUL(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.COMMENT(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.PCDATA(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.CHAR_REF(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.ENTITY_REF(_), _, strm') =>
                    noscript_PROD_1_SUBRULE_1_PROD_1(strm)
                | _ => fail()
              (* end case *))
            end
      fun noscript_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.posclos(noscript_PROD_1_SUBRULE_1_PRED, noscript_PROD_1_SUBRULE_1_NT, strm')
      val (ENDNOSCRIPT_RES, ENDNOSCRIPT_SPAN, strm') = matchENDNOSCRIPT(strm')
      val FULL_SPAN = (#1(STARTNOSCRIPT_SPAN), #2(ENDNOSCRIPT_SPAN))
      in
        (UserCode.noscript_PROD_1_ACT (SR_RES, STARTNOSCRIPT_RES, ENDNOSCRIPT_RES, SR_SPAN : (Lex.pos * Lex.pos), STARTNOSCRIPT_SPAN : (Lex.pos * Lex.pos), ENDNOSCRIPT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and div_NT (strm) = let
      val (STARTDIV_RES, STARTDIV_SPAN, strm') = matchSTARTDIV(strm)
      fun div_PROD_1_SUBRULE_1_NT (strm) = let
            val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
            val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
            in
              ((flow_RES), FULL_SPAN, strm')
            end
      fun div_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (flow_RES, flow_SPAN, strm') = EBNF.closure(div_PROD_1_SUBRULE_1_PRED, div_PROD_1_SUBRULE_1_NT, strm')
      val (ENDDIV_RES, ENDDIV_SPAN, strm') = matchENDDIV(strm')
      val FULL_SPAN = (#1(STARTDIV_SPAN), #2(ENDDIV_SPAN))
      in
        (UserCode.div_PROD_1_ACT (flow_RES, STARTDIV_RES, ENDDIV_RES, flow_SPAN : (Lex.pos * Lex.pos), STARTDIV_SPAN : (Lex.pos * Lex.pos), ENDDIV_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and dl_NT (strm) = let
      val (STARTDL_RES, STARTDL_SPAN, strm') = matchSTARTDL(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun dl_PROD_1_SUBRULE_1_NT (strm) = let
            fun dl_PROD_1_SUBRULE_1_PROD_1 (strm) = let
                  val (dt_RES, dt_SPAN, strm') = dt_NT(strm)
                  val FULL_SPAN = (#1(dt_SPAN), #2(dt_SPAN))
                  in
                    ((dt_RES), FULL_SPAN, strm')
                  end
            fun dl_PROD_1_SUBRULE_1_PROD_2 (strm) = let
                  val (dd_RES, dd_SPAN, strm') = dd_NT(strm)
                  val FULL_SPAN = (#1(dd_SPAN), #2(dd_SPAN))
                  in
                    ((dd_RES), FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.STARTDD(_), _, strm') =>
                    dl_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDT(_), _, strm') =>
                    dl_PROD_1_SUBRULE_1_PROD_1(strm)
                | _ => fail()
              (* end case *))
            end
      fun dl_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTDD(_), _, strm') => true
              | (Tok.STARTDT(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.posclos(dl_PROD_1_SUBRULE_1_PRED, dl_PROD_1_SUBRULE_1_NT, strm')
      val (ENDDL_RES, ENDDL_SPAN, strm') = matchENDDL(strm')
      val FULL_SPAN = (#1(STARTDL_SPAN), #2(ENDDL_SPAN))
      in
        (UserCode.dl_PROD_1_ACT (SR_RES, STARTDL_RES, ENDDL_RES, cdata_opt_RES, SR_SPAN : (Lex.pos * Lex.pos), STARTDL_SPAN : (Lex.pos * Lex.pos), ENDDL_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and dd_NT (strm) = let
      val (STARTDD_RES, STARTDD_SPAN, strm') = matchSTARTDD(strm)
      fun dd_PROD_1_SUBRULE_1_NT (strm) = let
            val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
            val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
            in
              ((flow_RES), FULL_SPAN, strm')
            end
      fun dd_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (flow_RES, flow_SPAN, strm') = EBNF.closure(dd_PROD_1_SUBRULE_1_PRED, dd_PROD_1_SUBRULE_1_NT, strm')
      fun dd_PROD_1_SUBRULE_2_NT (strm) = let
            val (ENDDD_RES, ENDDD_SPAN, strm') = matchENDDD(strm)
            val FULL_SPAN = (#1(ENDDD_SPAN), #2(ENDDD_SPAN))
            in
              (UserCode.dd_PROD_1_SUBRULE_2_PROD_1_ACT (STARTDD_RES, flow_RES, ENDDD_RES, STARTDD_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), ENDDD_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun dd_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.ENDDD, _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.optional(dd_PROD_1_SUBRULE_2_PRED, dd_PROD_1_SUBRULE_2_NT, strm')
      val FULL_SPAN = (#1(STARTDD_SPAN), #2(SR_SPAN))
      in
        (UserCode.dd_PROD_1_ACT (SR_RES, STARTDD_RES, flow_RES, SR_SPAN : (Lex.pos * Lex.pos), STARTDD_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and dt_NT (strm) = let
      val (STARTDT_RES, STARTDT_SPAN, strm') = matchSTARTDT(strm)
      fun dt_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun dt_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(dt_PROD_1_SUBRULE_1_PRED, dt_PROD_1_SUBRULE_1_NT, strm')
      fun dt_PROD_1_SUBRULE_2_NT (strm) = let
            val (ENDDT_RES, ENDDT_SPAN, strm') = matchENDDT(strm)
            val FULL_SPAN = (#1(ENDDT_SPAN), #2(ENDDT_SPAN))
            in
              (UserCode.dt_PROD_1_SUBRULE_2_PROD_1_ACT (STARTDT_RES, ENDDT_RES, inline_RES, STARTDT_SPAN : (Lex.pos * Lex.pos), ENDDT_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun dt_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.ENDDT, _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.optional(dt_PROD_1_SUBRULE_2_PRED, dt_PROD_1_SUBRULE_2_NT, strm')
      val FULL_SPAN = (#1(STARTDT_SPAN), #2(SR_SPAN))
      in
        (UserCode.dt_PROD_1_ACT (SR_RES, STARTDT_RES, inline_RES, SR_SPAN : (Lex.pos * Lex.pos), STARTDT_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and preformatted_NT (strm) = let
      val (pre_RES, pre_SPAN, strm') = pre_NT(strm)
      val FULL_SPAN = (#1(pre_SPAN), #2(pre_SPAN))
      in
        ((pre_RES), FULL_SPAN, strm')
      end
and pre_NT (strm) = let
      val (STARTPRE_RES, STARTPRE_SPAN, strm') = matchSTARTPRE(strm)
      fun pre_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun pre_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(pre_PROD_1_SUBRULE_1_PRED, pre_PROD_1_SUBRULE_1_NT, strm')
      val (ENDPRE_RES, ENDPRE_SPAN, strm') = matchENDPRE(strm')
      val FULL_SPAN = (#1(STARTPRE_SPAN), #2(ENDPRE_SPAN))
      in
        (UserCode.pre_PROD_1_ACT (STARTPRE_RES, inline_RES, ENDPRE_RES, STARTPRE_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDPRE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and list_NT (strm) = let
      fun list_PROD_1 (strm) = let
            val (ul_RES, ul_SPAN, strm') = ul_NT(strm)
            val FULL_SPAN = (#1(ul_SPAN), #2(ul_SPAN))
            in
              ((ul_RES), FULL_SPAN, strm')
            end
      fun list_PROD_2 (strm) = let
            val (ol_RES, ol_SPAN, strm') = ol_NT(strm)
            val FULL_SPAN = (#1(ol_SPAN), #2(ol_SPAN))
            in
              ((ol_RES), FULL_SPAN, strm')
            end
      fun list_PROD_3 (strm) = let
            val (list_loose_RES, list_loose_SPAN, strm') = list_loose_NT(strm)
            val FULL_SPAN = (#1(list_loose_SPAN), #2(list_loose_SPAN))
            in
              ((list_loose_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTDIR(_), _, strm') => list_PROD_3(strm)
          | (Tok.STARTMENU(_), _, strm') => list_PROD_3(strm)
          | (Tok.STARTUL(_), _, strm') => list_PROD_1(strm)
          | (Tok.STARTOL(_), _, strm') => list_PROD_2(strm)
          | _ => fail()
        (* end case *))
      end
and list_loose_NT (strm) = let
      fun list_loose_PROD_1 (strm) = let
            val (dir_RES, dir_SPAN, strm') = dir_NT(strm)
            val FULL_SPAN = (#1(dir_SPAN), #2(dir_SPAN))
            in
              ((dir_RES), FULL_SPAN, strm')
            end
      fun list_loose_PROD_2 (strm) = let
            val (menu_RES, menu_SPAN, strm') = menu_NT(strm)
            val FULL_SPAN = (#1(menu_SPAN), #2(menu_SPAN))
            in
              ((menu_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTMENU(_), _, strm') => list_loose_PROD_2(strm)
          | (Tok.STARTDIR(_), _, strm') => list_loose_PROD_1(strm)
          | _ => fail()
        (* end case *))
      end
and menu_NT (strm) = let
      val (STARTMENU_RES, STARTMENU_SPAN, strm') = matchSTARTMENU(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun menu_PROD_1_SUBRULE_1_NT (strm) = let
            val (li_RES, li_SPAN, strm') = li_NT(strm)
            val FULL_SPAN = (#1(li_SPAN), #2(li_SPAN))
            in
              ((li_RES), FULL_SPAN, strm')
            end
      fun menu_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTLI(_), _, strm') => true
              | _ => false
            (* end case *))
      val (li_RES, li_SPAN, strm') = EBNF.posclos(menu_PROD_1_SUBRULE_1_PRED, menu_PROD_1_SUBRULE_1_NT, strm')
      val (ENDMENU_RES, ENDMENU_SPAN, strm') = matchENDMENU(strm')
      val FULL_SPAN = (#1(STARTMENU_SPAN), #2(ENDMENU_SPAN))
      in
        (UserCode.menu_PROD_1_ACT (li_RES, ENDMENU_RES, cdata_opt_RES, STARTMENU_RES, li_SPAN : (Lex.pos * Lex.pos), ENDMENU_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), STARTMENU_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and li_NT (strm) = let
      val (STARTLI_RES, STARTLI_SPAN, strm') = matchSTARTLI(strm)
      fun li_PROD_1_SUBRULE_1_NT (strm) = let
            val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
            val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
            in
              ((flow_RES), FULL_SPAN, strm')
            end
      fun li_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (flow_RES, flow_SPAN, strm') = EBNF.closure(li_PROD_1_SUBRULE_1_PRED, li_PROD_1_SUBRULE_1_NT, strm')
      fun li_PROD_1_SUBRULE_2_NT (strm) = let
            val (ENDLI_RES, ENDLI_SPAN, strm') = matchENDLI(strm)
            val FULL_SPAN = (#1(ENDLI_SPAN), #2(ENDLI_SPAN))
            in
              (UserCode.li_PROD_1_SUBRULE_2_PROD_1_ACT (STARTLI_RES, flow_RES, ENDLI_RES, STARTLI_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), ENDLI_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun li_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.ENDLI, _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.optional(li_PROD_1_SUBRULE_2_PRED, li_PROD_1_SUBRULE_2_NT, strm')
      val FULL_SPAN = (#1(STARTLI_SPAN), #2(SR_SPAN))
      in
        (UserCode.li_PROD_1_ACT (SR_RES, STARTLI_RES, flow_RES, SR_SPAN : (Lex.pos * Lex.pos), STARTLI_SPAN : (Lex.pos * Lex.pos), flow_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and dir_NT (strm) = let
      val (STARTDIR_RES, STARTDIR_SPAN, strm') = matchSTARTDIR(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun dir_PROD_1_SUBRULE_1_NT (strm) = let
            val (li_RES, li_SPAN, strm') = li_NT(strm)
            val FULL_SPAN = (#1(li_SPAN), #2(li_SPAN))
            in
              ((li_RES), FULL_SPAN, strm')
            end
      fun dir_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTLI(_), _, strm') => true
              | _ => false
            (* end case *))
      val (li_RES, li_SPAN, strm') = EBNF.posclos(dir_PROD_1_SUBRULE_1_PRED, dir_PROD_1_SUBRULE_1_NT, strm')
      val (ENDDIR_RES, ENDDIR_SPAN, strm') = matchENDDIR(strm')
      val FULL_SPAN = (#1(STARTDIR_SPAN), #2(ENDDIR_SPAN))
      in
        (UserCode.dir_PROD_1_ACT (li_RES, STARTDIR_RES, ENDDIR_RES, cdata_opt_RES, li_SPAN : (Lex.pos * Lex.pos), STARTDIR_SPAN : (Lex.pos * Lex.pos), ENDDIR_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and ol_NT (strm) = let
      val (STARTOL_RES, STARTOL_SPAN, strm') = matchSTARTOL(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun ol_PROD_1_SUBRULE_1_NT (strm) = let
            val (li_RES, li_SPAN, strm') = li_NT(strm)
            val FULL_SPAN = (#1(li_SPAN), #2(li_SPAN))
            in
              ((li_RES), FULL_SPAN, strm')
            end
      fun ol_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTLI(_), _, strm') => true
              | _ => false
            (* end case *))
      val (li_RES, li_SPAN, strm') = EBNF.posclos(ol_PROD_1_SUBRULE_1_PRED, ol_PROD_1_SUBRULE_1_NT, strm')
      val (ENDOL_RES, ENDOL_SPAN, strm') = matchENDOL(strm')
      val FULL_SPAN = (#1(STARTOL_SPAN), #2(ENDOL_SPAN))
      in
        (UserCode.ol_PROD_1_ACT (li_RES, STARTOL_RES, ENDOL_RES, cdata_opt_RES, li_SPAN : (Lex.pos * Lex.pos), STARTOL_SPAN : (Lex.pos * Lex.pos), ENDOL_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and ul_NT (strm) = let
      val (STARTUL_RES, STARTUL_SPAN, strm') = matchSTARTUL(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      fun ul_PROD_1_SUBRULE_1_NT (strm) = let
            val (li_RES, li_SPAN, strm') = li_NT(strm)
            val FULL_SPAN = (#1(li_SPAN), #2(li_SPAN))
            in
              ((li_RES), FULL_SPAN, strm')
            end
      fun ul_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTLI(_), _, strm') => true
              | _ => false
            (* end case *))
      val (li_RES, li_SPAN, strm') = EBNF.posclos(ul_PROD_1_SUBRULE_1_PRED, ul_PROD_1_SUBRULE_1_NT, strm')
      val (ENDUL_RES, ENDUL_SPAN, strm') = matchENDUL(strm')
      val FULL_SPAN = (#1(STARTUL_SPAN), #2(ENDUL_SPAN))
      in
        (UserCode.ul_PROD_1_ACT (li_RES, STARTUL_RES, ENDUL_RES, cdata_opt_RES, li_SPAN : (Lex.pos * Lex.pos), STARTUL_SPAN : (Lex.pos * Lex.pos), ENDUL_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and heading_NT (strm) = let
      fun heading_PROD_1 (strm) = let
            val (h1_RES, h1_SPAN, strm') = h1_NT(strm)
            val FULL_SPAN = (#1(h1_SPAN), #2(h1_SPAN))
            in
              ((h1_RES), FULL_SPAN, strm')
            end
      fun heading_PROD_2 (strm) = let
            val (h2_RES, h2_SPAN, strm') = h2_NT(strm)
            val FULL_SPAN = (#1(h2_SPAN), #2(h2_SPAN))
            in
              ((h2_RES), FULL_SPAN, strm')
            end
      fun heading_PROD_3 (strm) = let
            val (h3_RES, h3_SPAN, strm') = h3_NT(strm)
            val FULL_SPAN = (#1(h3_SPAN), #2(h3_SPAN))
            in
              ((h3_RES), FULL_SPAN, strm')
            end
      fun heading_PROD_4 (strm) = let
            val (h4_RES, h4_SPAN, strm') = h4_NT(strm)
            val FULL_SPAN = (#1(h4_SPAN), #2(h4_SPAN))
            in
              ((h4_RES), FULL_SPAN, strm')
            end
      fun heading_PROD_5 (strm) = let
            val (h5_RES, h5_SPAN, strm') = h5_NT(strm)
            val FULL_SPAN = (#1(h5_SPAN), #2(h5_SPAN))
            in
              ((h5_RES), FULL_SPAN, strm')
            end
      fun heading_PROD_6 (strm) = let
            val (h6_RES, h6_SPAN, strm') = h6_NT(strm)
            val FULL_SPAN = (#1(h6_SPAN), #2(h6_SPAN))
            in
              ((h6_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTH6(_), _, strm') => heading_PROD_6(strm)
          | (Tok.STARTH4(_), _, strm') => heading_PROD_4(strm)
          | (Tok.STARTH2(_), _, strm') => heading_PROD_2(strm)
          | (Tok.STARTH1(_), _, strm') => heading_PROD_1(strm)
          | (Tok.STARTH3(_), _, strm') => heading_PROD_3(strm)
          | (Tok.STARTH5(_), _, strm') => heading_PROD_5(strm)
          | _ => fail()
        (* end case *))
      end
and h6_NT (strm) = let
      val (STARTH6_RES, STARTH6_SPAN, strm') = matchSTARTH6(strm)
      fun h6_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun h6_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(h6_PROD_1_SUBRULE_1_PRED, h6_PROD_1_SUBRULE_1_NT, strm')
      val (ENDH6_RES, ENDH6_SPAN, strm') = matchENDH6(strm')
      val FULL_SPAN = (#1(STARTH6_SPAN), #2(ENDH6_SPAN))
      in
        (UserCode.h6_PROD_1_ACT (STARTH6_RES, ENDH6_RES, inline_RES, STARTH6_SPAN : (Lex.pos * Lex.pos), ENDH6_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and h5_NT (strm) = let
      val (STARTH5_RES, STARTH5_SPAN, strm') = matchSTARTH5(strm)
      fun h5_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun h5_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(h5_PROD_1_SUBRULE_1_PRED, h5_PROD_1_SUBRULE_1_NT, strm')
      val (ENDH5_RES, ENDH5_SPAN, strm') = matchENDH5(strm')
      val FULL_SPAN = (#1(STARTH5_SPAN), #2(ENDH5_SPAN))
      in
        (UserCode.h5_PROD_1_ACT (STARTH5_RES, ENDH5_RES, inline_RES, STARTH5_SPAN : (Lex.pos * Lex.pos), ENDH5_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and h4_NT (strm) = let
      val (STARTH4_RES, STARTH4_SPAN, strm') = matchSTARTH4(strm)
      fun h4_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun h4_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(h4_PROD_1_SUBRULE_1_PRED, h4_PROD_1_SUBRULE_1_NT, strm')
      val (ENDH4_RES, ENDH4_SPAN, strm') = matchENDH4(strm')
      val FULL_SPAN = (#1(STARTH4_SPAN), #2(ENDH4_SPAN))
      in
        (UserCode.h4_PROD_1_ACT (STARTH4_RES, ENDH4_RES, inline_RES, STARTH4_SPAN : (Lex.pos * Lex.pos), ENDH4_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and h3_NT (strm) = let
      val (STARTH3_RES, STARTH3_SPAN, strm') = matchSTARTH3(strm)
      fun h3_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun h3_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(h3_PROD_1_SUBRULE_1_PRED, h3_PROD_1_SUBRULE_1_NT, strm')
      val (ENDH3_RES, ENDH3_SPAN, strm') = matchENDH3(strm')
      val FULL_SPAN = (#1(STARTH3_SPAN), #2(ENDH3_SPAN))
      in
        (UserCode.h3_PROD_1_ACT (STARTH3_RES, ENDH3_RES, inline_RES, STARTH3_SPAN : (Lex.pos * Lex.pos), ENDH3_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and h2_NT (strm) = let
      val (STARTH2_RES, STARTH2_SPAN, strm') = matchSTARTH2(strm)
      fun h2_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun h2_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(h2_PROD_1_SUBRULE_1_PRED, h2_PROD_1_SUBRULE_1_NT, strm')
      val (ENDH2_RES, ENDH2_SPAN, strm') = matchENDH2(strm')
      val FULL_SPAN = (#1(STARTH2_SPAN), #2(ENDH2_SPAN))
      in
        (UserCode.h2_PROD_1_ACT (STARTH2_RES, ENDH2_RES, inline_RES, STARTH2_SPAN : (Lex.pos * Lex.pos), ENDH2_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and h1_NT (strm) = let
      val (STARTH1_RES, STARTH1_SPAN, strm') = matchSTARTH1(strm)
      fun h1_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun h1_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(h1_PROD_1_SUBRULE_1_PRED, h1_PROD_1_SUBRULE_1_NT, strm')
      val (ENDH1_RES, ENDH1_SPAN, strm') = matchENDH1(strm')
      val FULL_SPAN = (#1(STARTH1_SPAN), #2(ENDH1_SPAN))
      in
        (UserCode.h1_PROD_1_ACT (STARTH1_RES, ENDH1_RES, inline_RES, STARTH1_SPAN : (Lex.pos * Lex.pos), ENDH1_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and p_NT (strm) = let
      val (STARTP_RES, STARTP_SPAN, strm') = matchSTARTP(strm)
      fun p_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun p_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(p_PROD_1_SUBRULE_1_PRED, p_PROD_1_SUBRULE_1_NT, strm')
      val (ENDP_RES, ENDP_SPAN, strm') = matchENDP(strm')
      val FULL_SPAN = (#1(STARTP_SPAN), #2(ENDP_SPAN))
      in
        (UserCode.p_PROD_1_ACT (ENDP_RES, STARTP_RES, inline_RES, ENDP_SPAN : (Lex.pos * Lex.pos), STARTP_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and label_NT (strm) = let
      val (STARTLABEL_RES, STARTLABEL_SPAN, strm') = matchSTARTLABEL(strm)
      fun label_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun label_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(label_PROD_1_SUBRULE_1_PRED, label_PROD_1_SUBRULE_1_NT, strm')
      val (ENDLABEL_RES, ENDLABEL_SPAN, strm') = matchENDLABEL(strm')
      val FULL_SPAN = (#1(STARTLABEL_SPAN), #2(ENDLABEL_SPAN))
      in
        (UserCode.label_PROD_1_ACT (ENDLABEL_RES, STARTLABEL_RES, inline_RES, ENDLABEL_SPAN : (Lex.pos * Lex.pos), STARTLABEL_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and special_NT (strm) = let
      fun special_PROD_1 (strm) = let
            val (a_RES, a_SPAN, strm') = a_NT(strm)
            val FULL_SPAN = (#1(a_SPAN), #2(a_SPAN))
            in
              ((a_RES), FULL_SPAN, strm')
            end
      fun special_PROD_2 (strm) = let
            val (img_RES, img_SPAN, strm') = img_NT(strm)
            val FULL_SPAN = (#1(img_SPAN), #2(img_SPAN))
            in
              ((img_RES), FULL_SPAN, strm')
            end
      fun special_PROD_3 (strm) = let
            val (object_RES, object_SPAN, strm') = object_NT(strm)
            val FULL_SPAN = (#1(object_SPAN), #2(object_SPAN))
            in
              ((object_RES), FULL_SPAN, strm')
            end
      fun special_PROD_4 (strm) = let
            val (br_RES, br_SPAN, strm') = br_NT(strm)
            val FULL_SPAN = (#1(br_SPAN), #2(br_SPAN))
            in
              ((br_RES), FULL_SPAN, strm')
            end
      fun special_PROD_5 (strm) = let
            val (script_RES, script_SPAN, strm') = script_NT(strm)
            val FULL_SPAN = (#1(script_SPAN), #2(script_SPAN))
            in
              ((script_RES), FULL_SPAN, strm')
            end
      fun special_PROD_6 (strm) = let
            val (map_RES, map_SPAN, strm') = map_NT(strm)
            val FULL_SPAN = (#1(map_SPAN), #2(map_SPAN))
            in
              ((map_RES), FULL_SPAN, strm')
            end
      fun special_PROD_7 (strm) = let
            val (q_RES, q_SPAN, strm') = q_NT(strm)
            val FULL_SPAN = (#1(q_SPAN), #2(q_SPAN))
            in
              ((q_RES), FULL_SPAN, strm')
            end
      fun special_PROD_8 (strm) = let
            val (sub_RES, sub_SPAN, strm') = sub_NT(strm)
            val FULL_SPAN = (#1(sub_SPAN), #2(sub_SPAN))
            in
              ((sub_RES), FULL_SPAN, strm')
            end
      fun special_PROD_9 (strm) = let
            val (sup_RES, sup_SPAN, strm') = sup_NT(strm)
            val FULL_SPAN = (#1(sup_SPAN), #2(sup_SPAN))
            in
              ((sup_RES), FULL_SPAN, strm')
            end
      fun special_PROD_10 (strm) = let
            val (span_RES, span_SPAN, strm') = span_NT(strm)
            val FULL_SPAN = (#1(span_SPAN), #2(span_SPAN))
            in
              ((span_RES), FULL_SPAN, strm')
            end
      fun special_PROD_11 (strm) = let
            val (bdo_RES, bdo_SPAN, strm') = bdo_NT(strm)
            val FULL_SPAN = (#1(bdo_SPAN), #2(bdo_SPAN))
            in
              ((bdo_RES), FULL_SPAN, strm')
            end
      fun special_PROD_12 (strm) = let
            val (special_loose_RES, special_loose_SPAN, strm') = special_loose_NT(strm)
            val FULL_SPAN = (#1(special_loose_SPAN), #2(special_loose_SPAN))
            in
              ((special_loose_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTAPPLET(_), _, strm') => special_PROD_12(strm)
          | (Tok.STARTBASEFONT(_), _, strm') => special_PROD_12(strm)
          | (Tok.STARTFONT(_), _, strm') => special_PROD_12(strm)
          | (Tok.STARTIFRAME(_), _, strm') => special_PROD_12(strm)
          | (Tok.STARTSPAN(_), _, strm') => special_PROD_10(strm)
          | (Tok.STARTSUB(_), _, strm') => special_PROD_8(strm)
          | (Tok.STARTMAP(_), _, strm') => special_PROD_6(strm)
          | (Tok.STARTBR(_), _, strm') => special_PROD_4(strm)
          | (Tok.STARTIMG(_), _, strm') => special_PROD_2(strm)
          | (Tok.STARTA(_), _, strm') => special_PROD_1(strm)
          | (Tok.STARTOBJECT(_), _, strm') => special_PROD_3(strm)
          | (Tok.STARTSCRIPT(_), _, strm') => special_PROD_5(strm)
          | (Tok.STARTQ(_), _, strm') => special_PROD_7(strm)
          | (Tok.STARTSUP(_), _, strm') => special_PROD_9(strm)
          | (Tok.STARTBDO(_), _, strm') => special_PROD_11(strm)
          | _ => fail()
        (* end case *))
      end
and special_loose_NT (strm) = let
      fun special_loose_PROD_1 (strm) = let
            val (applet_RES, applet_SPAN, strm') = applet_NT(strm)
            val FULL_SPAN = (#1(applet_SPAN), #2(applet_SPAN))
            in
              ((applet_RES), FULL_SPAN, strm')
            end
      fun special_loose_PROD_2 (strm) = let
            val (basefont_RES, basefont_SPAN, strm') = basefont_NT(strm)
            val FULL_SPAN = (#1(basefont_SPAN), #2(basefont_SPAN))
            in
              ((basefont_RES), FULL_SPAN, strm')
            end
      fun special_loose_PROD_3 (strm) = let
            val (font_RES, font_SPAN, strm') = font_NT(strm)
            val FULL_SPAN = (#1(font_SPAN), #2(font_SPAN))
            in
              ((font_RES), FULL_SPAN, strm')
            end
      fun special_loose_PROD_4 (strm) = let
            val (iframe_RES, iframe_SPAN, strm') = iframe_NT(strm)
            val FULL_SPAN = (#1(iframe_SPAN), #2(iframe_SPAN))
            in
              ((iframe_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTIFRAME(_), _, strm') => special_loose_PROD_4(strm)
          | (Tok.STARTBASEFONT(_), _, strm') => special_loose_PROD_2(strm)
          | (Tok.STARTAPPLET(_), _, strm') => special_loose_PROD_1(strm)
          | (Tok.STARTFONT(_), _, strm') => special_loose_PROD_3(strm)
          | _ => fail()
        (* end case *))
      end
and iframe_NT (strm) = let
      val (STARTIFRAME_RES, STARTIFRAME_SPAN, strm') = matchSTARTIFRAME(strm)
      fun iframe_PROD_1_SUBRULE_1_NT (strm) = let
            val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
            val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
            in
              ((flow_RES), FULL_SPAN, strm')
            end
      fun iframe_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (flow_RES, flow_SPAN, strm') = EBNF.closure(iframe_PROD_1_SUBRULE_1_PRED, iframe_PROD_1_SUBRULE_1_NT, strm')
      val (ENDIFRAME_RES, ENDIFRAME_SPAN, strm') = matchENDIFRAME(strm')
      val FULL_SPAN = (#1(STARTIFRAME_SPAN), #2(ENDIFRAME_SPAN))
      in
        (UserCode.iframe_PROD_1_ACT (flow_RES, STARTIFRAME_RES, ENDIFRAME_RES, flow_SPAN : (Lex.pos * Lex.pos), STARTIFRAME_SPAN : (Lex.pos * Lex.pos), ENDIFRAME_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and font_NT (strm) = let
      val (STARTFONT_RES, STARTFONT_SPAN, strm') = matchSTARTFONT(strm)
      fun font_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun font_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(font_PROD_1_SUBRULE_1_PRED, font_PROD_1_SUBRULE_1_NT, strm')
      val (ENDFONT_RES, ENDFONT_SPAN, strm') = matchENDFONT(strm')
      val FULL_SPAN = (#1(STARTFONT_SPAN), #2(ENDFONT_SPAN))
      in
        (UserCode.font_PROD_1_ACT (ENDFONT_RES, inline_RES, STARTFONT_RES, ENDFONT_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), STARTFONT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and applet_NT (strm) = let
      val (STARTAPPLET_RES, STARTAPPLET_SPAN, strm') = matchSTARTAPPLET(strm)
      fun applet_PROD_1_SUBRULE_1_NT (strm) = let
            fun applet_PROD_1_SUBRULE_1_PROD_1 (strm) = let
                  val (param_RES, param_SPAN, strm') = param_NT(strm)
                  val FULL_SPAN = (#1(param_SPAN), #2(param_SPAN))
                  in
                    ((param_RES), FULL_SPAN, strm')
                  end
            fun applet_PROD_1_SUBRULE_1_PROD_2 (strm) = let
                  val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
                  val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
                  in
                    ((flow_RES), FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.COMMENT(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.PCDATA(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.CHAR_REF(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.ENTITY_REF(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTA(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTABBR(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTACRONYM(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTADDRESS(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTAPPLET(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTB(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBASEFONT(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBDO(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBIG(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBLOCKQUOTE(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBR(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBUTTON(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTCENTER(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTCITE(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTCODE(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDFN(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDIR(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDIV(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDL(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTEM(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTFIELDSET(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTFONT(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTFORM(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH1(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH2(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH3(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH4(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH5(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH6(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTHR(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTI(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTIFRAME(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTIMG(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTINPUT(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTISINDEX(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTKBD(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTLABEL(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTMAP(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTMENU(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTNOSCRIPT(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTOBJECT(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTOL(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTP(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTPRE(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTQ(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTS(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSAMP(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSCRIPT(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSELECT(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSMALL(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSPAN(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSTRIKE(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSTRONG(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSUB(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSUP(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTTABLE(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTTEXTAREA(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTTT(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTU(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTUL(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTVAR(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTPARAM(_), _, strm') =>
                    applet_PROD_1_SUBRULE_1_PROD_1(strm)
                | _ => fail()
              (* end case *))
            end
      fun applet_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPARAM(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.closure(applet_PROD_1_SUBRULE_1_PRED, applet_PROD_1_SUBRULE_1_NT, strm')
      val (ENDAPPLET_RES, ENDAPPLET_SPAN, strm') = matchENDAPPLET(strm')
      val FULL_SPAN = (#1(STARTAPPLET_SPAN), #2(ENDAPPLET_SPAN))
      in
        (UserCode.applet_PROD_1_ACT (SR_RES, ENDAPPLET_RES, STARTAPPLET_RES, SR_SPAN : (Lex.pos * Lex.pos), ENDAPPLET_SPAN : (Lex.pos * Lex.pos), STARTAPPLET_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and bdo_NT (strm) = let
      val (STARTBDO_RES, STARTBDO_SPAN, strm') = matchSTARTBDO(strm)
      fun bdo_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun bdo_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(bdo_PROD_1_SUBRULE_1_PRED, bdo_PROD_1_SUBRULE_1_NT, strm')
      val (ENDBDO_RES, ENDBDO_SPAN, strm') = matchENDBDO(strm')
      val FULL_SPAN = (#1(STARTBDO_SPAN), #2(ENDBDO_SPAN))
      in
        (UserCode.bdo_PROD_1_ACT (STARTBDO_RES, inline_RES, ENDBDO_RES, STARTBDO_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDBDO_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and span_NT (strm) = let
      val (STARTSPAN_RES, STARTSPAN_SPAN, strm') = matchSTARTSPAN(strm)
      fun span_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun span_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(span_PROD_1_SUBRULE_1_PRED, span_PROD_1_SUBRULE_1_NT, strm')
      val (ENDSPAN_RES, ENDSPAN_SPAN, strm') = matchENDSPAN(strm')
      val FULL_SPAN = (#1(STARTSPAN_SPAN), #2(ENDSPAN_SPAN))
      in
        (UserCode.span_PROD_1_ACT (ENDSPAN_RES, inline_RES, STARTSPAN_RES, ENDSPAN_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), STARTSPAN_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and sup_NT (strm) = let
      val (STARTSUP_RES, STARTSUP_SPAN, strm') = matchSTARTSUP(strm)
      fun sup_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun sup_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(sup_PROD_1_SUBRULE_1_PRED, sup_PROD_1_SUBRULE_1_NT, strm')
      val (ENDSUP_RES, ENDSUP_SPAN, strm') = matchENDSUP(strm')
      val FULL_SPAN = (#1(STARTSUP_SPAN), #2(ENDSUP_SPAN))
      in
        (UserCode.sup_PROD_1_ACT (STARTSUP_RES, inline_RES, ENDSUP_RES, STARTSUP_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDSUP_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and sub_NT (strm) = let
      val (STARTSUB_RES, STARTSUB_SPAN, strm') = matchSTARTSUB(strm)
      fun sub_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun sub_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(sub_PROD_1_SUBRULE_1_PRED, sub_PROD_1_SUBRULE_1_NT, strm')
      val (ENDSUB_RES, ENDSUB_SPAN, strm') = matchENDSUB(strm')
      val FULL_SPAN = (#1(STARTSUB_SPAN), #2(ENDSUB_SPAN))
      in
        (UserCode.sub_PROD_1_ACT (STARTSUB_RES, inline_RES, ENDSUB_RES, STARTSUB_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDSUB_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and q_NT (strm) = let
      val (STARTQ_RES, STARTQ_SPAN, strm') = matchSTARTQ(strm)
      fun q_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun q_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(q_PROD_1_SUBRULE_1_PRED, q_PROD_1_SUBRULE_1_NT, strm')
      val (ENDQ_RES, ENDQ_SPAN, strm') = matchENDQ(strm')
      val FULL_SPAN = (#1(STARTQ_SPAN), #2(ENDQ_SPAN))
      in
        (UserCode.q_PROD_1_ACT (ENDQ_RES, STARTQ_RES, inline_RES, ENDQ_SPAN : (Lex.pos * Lex.pos), STARTQ_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and map_NT (strm) = let
      val (STARTMAP_RES, STARTMAP_SPAN, strm') = matchSTARTMAP(strm)
      fun map_PROD_1_SUBRULE_1_NT (strm) = let
            fun map_PROD_1_SUBRULE_1_PROD_1 (strm) = let
                  val (cdata_RES, cdata_SPAN, strm') = cdata_NT(strm)
                  val FULL_SPAN = (#1(cdata_SPAN), #2(cdata_SPAN))
                  in
                    ((cdata_RES), FULL_SPAN, strm')
                  end
            fun map_PROD_1_SUBRULE_1_PROD_2 (strm) = let
                  val (block_RES, block_SPAN, strm') = block_NT(strm)
                  val FULL_SPAN = (#1(block_SPAN), #2(block_SPAN))
                  in
                    ((block_RES), FULL_SPAN, strm')
                  end
            fun map_PROD_1_SUBRULE_1_PROD_3 (strm) = let
                  val (area_RES, area_SPAN, strm') = area_NT(strm)
                  val FULL_SPAN = (#1(area_SPAN), #2(area_SPAN))
                  in
                    ((area_RES), FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.STARTAREA(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_3(strm)
                | (Tok.COMMENT(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.PCDATA(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.CHAR_REF(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.ENTITY_REF(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTADDRESS(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBLOCKQUOTE(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTCENTER(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDIR(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDIV(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDL(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTFIELDSET(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTFORM(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH1(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH2(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH3(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH4(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH5(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH6(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTHR(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTISINDEX(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTMENU(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTNOSCRIPT(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTOL(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTP(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTPRE(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTTABLE(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTUL(_), _, strm') =>
                    map_PROD_1_SUBRULE_1_PROD_2(strm)
                | _ => fail()
              (* end case *))
            end
      fun map_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAREA(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.posclos(map_PROD_1_SUBRULE_1_PRED, map_PROD_1_SUBRULE_1_NT, strm')
      val (ENDMAP_RES, ENDMAP_SPAN, strm') = matchENDMAP(strm')
      val FULL_SPAN = (#1(STARTMAP_SPAN), #2(ENDMAP_SPAN))
      in
        (UserCode.map_PROD_1_ACT (SR_RES, STARTMAP_RES, ENDMAP_RES, SR_SPAN : (Lex.pos * Lex.pos), STARTMAP_SPAN : (Lex.pos * Lex.pos), ENDMAP_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and object_NT (strm) = let
      val (STARTOBJECT_RES, STARTOBJECT_SPAN, strm') = matchSTARTOBJECT(strm)
      fun object_PROD_1_SUBRULE_1_NT (strm) = let
            fun object_PROD_1_SUBRULE_1_PROD_1 (strm) = let
                  val (param_RES, param_SPAN, strm') = param_NT(strm)
                  val FULL_SPAN = (#1(param_SPAN), #2(param_SPAN))
                  in
                    ((param_RES), FULL_SPAN, strm')
                  end
            fun object_PROD_1_SUBRULE_1_PROD_2 (strm) = let
                  val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
                  val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
                  in
                    ((flow_RES), FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.COMMENT(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.PCDATA(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.CHAR_REF(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.ENTITY_REF(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTA(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTABBR(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTACRONYM(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTADDRESS(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTAPPLET(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTB(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBASEFONT(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBDO(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBIG(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBLOCKQUOTE(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBR(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTBUTTON(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTCENTER(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTCITE(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTCODE(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDFN(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDIR(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDIV(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDL(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTEM(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTFIELDSET(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTFONT(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTFORM(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH1(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH2(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH3(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH4(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH5(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTH6(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTHR(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTI(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTIFRAME(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTIMG(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTINPUT(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTISINDEX(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTKBD(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTLABEL(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTMAP(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTMENU(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTNOSCRIPT(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTOBJECT(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTOL(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTP(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTPRE(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTQ(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTS(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSAMP(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSCRIPT(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSELECT(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSMALL(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSPAN(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSTRIKE(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSTRONG(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSUB(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTSUP(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTTABLE(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTTEXTAREA(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTTT(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTU(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTUL(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTVAR(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTPARAM(_), _, strm') =>
                    object_PROD_1_SUBRULE_1_PROD_1(strm)
                | _ => fail()
              (* end case *))
            end
      fun object_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPARAM(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.closure(object_PROD_1_SUBRULE_1_PRED, object_PROD_1_SUBRULE_1_NT, strm')
      val (ENDOBJECT_RES, ENDOBJECT_SPAN, strm') = matchENDOBJECT(strm')
      val FULL_SPAN = (#1(STARTOBJECT_SPAN), #2(ENDOBJECT_SPAN))
      in
        (UserCode.object_PROD_1_ACT (SR_RES, STARTOBJECT_RES, ENDOBJECT_RES, SR_SPAN : (Lex.pos * Lex.pos), STARTOBJECT_SPAN : (Lex.pos * Lex.pos), ENDOBJECT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and a_NT (strm) = let
      val (STARTA_RES, STARTA_SPAN, strm') = matchSTARTA(strm)
      fun a_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun a_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(a_PROD_1_SUBRULE_1_PRED, a_PROD_1_SUBRULE_1_NT, strm')
      val (ENDA_RES, ENDA_SPAN, strm') = matchENDA(strm')
      val FULL_SPAN = (#1(STARTA_SPAN), #2(ENDA_SPAN))
      in
        (UserCode.a_PROD_1_ACT (ENDA_RES, STARTA_RES, inline_RES, ENDA_SPAN : (Lex.pos * Lex.pos), STARTA_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and phrase_NT (strm) = let
      fun phrase_PROD_1 (strm) = let
            val (em_RES, em_SPAN, strm') = em_NT(strm)
            val FULL_SPAN = (#1(em_SPAN), #2(em_SPAN))
            in
              ((em_RES), FULL_SPAN, strm')
            end
      fun phrase_PROD_2 (strm) = let
            val (strong_RES, strong_SPAN, strm') = strong_NT(strm)
            val FULL_SPAN = (#1(strong_SPAN), #2(strong_SPAN))
            in
              ((strong_RES), FULL_SPAN, strm')
            end
      fun phrase_PROD_3 (strm) = let
            val (dfn_RES, dfn_SPAN, strm') = dfn_NT(strm)
            val FULL_SPAN = (#1(dfn_SPAN), #2(dfn_SPAN))
            in
              ((dfn_RES), FULL_SPAN, strm')
            end
      fun phrase_PROD_4 (strm) = let
            val (code_RES, code_SPAN, strm') = code_NT(strm)
            val FULL_SPAN = (#1(code_SPAN), #2(code_SPAN))
            in
              ((code_RES), FULL_SPAN, strm')
            end
      fun phrase_PROD_5 (strm) = let
            val (samp_RES, samp_SPAN, strm') = samp_NT(strm)
            val FULL_SPAN = (#1(samp_SPAN), #2(samp_SPAN))
            in
              ((samp_RES), FULL_SPAN, strm')
            end
      fun phrase_PROD_6 (strm) = let
            val (kbd_RES, kbd_SPAN, strm') = kbd_NT(strm)
            val FULL_SPAN = (#1(kbd_SPAN), #2(kbd_SPAN))
            in
              ((kbd_RES), FULL_SPAN, strm')
            end
      fun phrase_PROD_7 (strm) = let
            val (var_RES, var_SPAN, strm') = var_NT(strm)
            val FULL_SPAN = (#1(var_SPAN), #2(var_SPAN))
            in
              ((var_RES), FULL_SPAN, strm')
            end
      fun phrase_PROD_8 (strm) = let
            val (cite_RES, cite_SPAN, strm') = cite_NT(strm)
            val FULL_SPAN = (#1(cite_SPAN), #2(cite_SPAN))
            in
              ((cite_RES), FULL_SPAN, strm')
            end
      fun phrase_PROD_9 (strm) = let
            val (abbr_RES, abbr_SPAN, strm') = abbr_NT(strm)
            val FULL_SPAN = (#1(abbr_SPAN), #2(abbr_SPAN))
            in
              ((abbr_RES), FULL_SPAN, strm')
            end
      fun phrase_PROD_10 (strm) = let
            val (acronym_RES, acronym_SPAN, strm') = acronym_NT(strm)
            val FULL_SPAN = (#1(acronym_SPAN), #2(acronym_SPAN))
            in
              ((acronym_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTACRONYM(_), _, strm') => phrase_PROD_10(strm)
          | (Tok.STARTCITE(_), _, strm') => phrase_PROD_8(strm)
          | (Tok.STARTKBD(_), _, strm') => phrase_PROD_6(strm)
          | (Tok.STARTCODE(_), _, strm') => phrase_PROD_4(strm)
          | (Tok.STARTSTRONG(_), _, strm') => phrase_PROD_2(strm)
          | (Tok.STARTEM(_), _, strm') => phrase_PROD_1(strm)
          | (Tok.STARTDFN(_), _, strm') => phrase_PROD_3(strm)
          | (Tok.STARTSAMP(_), _, strm') => phrase_PROD_5(strm)
          | (Tok.STARTVAR(_), _, strm') => phrase_PROD_7(strm)
          | (Tok.STARTABBR(_), _, strm') => phrase_PROD_9(strm)
          | _ => fail()
        (* end case *))
      end
and acronym_NT (strm) = let
      val (STARTACRONYM_RES, STARTACRONYM_SPAN, strm') = matchSTARTACRONYM(strm)
      fun acronym_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun acronym_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(acronym_PROD_1_SUBRULE_1_PRED, acronym_PROD_1_SUBRULE_1_NT, strm')
      val (ENDACRONYM_RES, ENDACRONYM_SPAN, strm') = matchENDACRONYM(strm')
      val FULL_SPAN = (#1(STARTACRONYM_SPAN), #2(ENDACRONYM_SPAN))
      in
        (UserCode.acronym_PROD_1_ACT (STARTACRONYM_RES, ENDACRONYM_RES, inline_RES, STARTACRONYM_SPAN : (Lex.pos * Lex.pos), ENDACRONYM_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and abbr_NT (strm) = let
      val (STARTABBR_RES, STARTABBR_SPAN, strm') = matchSTARTABBR(strm)
      fun abbr_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun abbr_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(abbr_PROD_1_SUBRULE_1_PRED, abbr_PROD_1_SUBRULE_1_NT, strm')
      val (ENDABBR_RES, ENDABBR_SPAN, strm') = matchENDABBR(strm')
      val FULL_SPAN = (#1(STARTABBR_SPAN), #2(ENDABBR_SPAN))
      in
        (UserCode.abbr_PROD_1_ACT (ENDABBR_RES, inline_RES, STARTABBR_RES, ENDABBR_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), STARTABBR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and cite_NT (strm) = let
      val (STARTCITE_RES, STARTCITE_SPAN, strm') = matchSTARTCITE(strm)
      fun cite_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun cite_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(cite_PROD_1_SUBRULE_1_PRED, cite_PROD_1_SUBRULE_1_NT, strm')
      val (ENDCITE_RES, ENDCITE_SPAN, strm') = matchENDCITE(strm')
      val FULL_SPAN = (#1(STARTCITE_SPAN), #2(ENDCITE_SPAN))
      in
        (UserCode.cite_PROD_1_ACT (ENDCITE_RES, inline_RES, STARTCITE_RES, ENDCITE_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), STARTCITE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and var_NT (strm) = let
      val (STARTVAR_RES, STARTVAR_SPAN, strm') = matchSTARTVAR(strm)
      fun var_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun var_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(var_PROD_1_SUBRULE_1_PRED, var_PROD_1_SUBRULE_1_NT, strm')
      val (ENDVAR_RES, ENDVAR_SPAN, strm') = matchENDVAR(strm')
      val FULL_SPAN = (#1(STARTVAR_SPAN), #2(ENDVAR_SPAN))
      in
        (UserCode.var_PROD_1_ACT (STARTVAR_RES, inline_RES, ENDVAR_RES, STARTVAR_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDVAR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and kbd_NT (strm) = let
      val (STARTKBD_RES, STARTKBD_SPAN, strm') = matchSTARTKBD(strm)
      fun kbd_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun kbd_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(kbd_PROD_1_SUBRULE_1_PRED, kbd_PROD_1_SUBRULE_1_NT, strm')
      val (ENDKBD_RES, ENDKBD_SPAN, strm') = matchENDKBD(strm')
      val FULL_SPAN = (#1(STARTKBD_SPAN), #2(ENDKBD_SPAN))
      in
        (UserCode.kbd_PROD_1_ACT (STARTKBD_RES, inline_RES, ENDKBD_RES, STARTKBD_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDKBD_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and samp_NT (strm) = let
      val (STARTSAMP_RES, STARTSAMP_SPAN, strm') = matchSTARTSAMP(strm)
      fun samp_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun samp_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(samp_PROD_1_SUBRULE_1_PRED, samp_PROD_1_SUBRULE_1_NT, strm')
      val (ENDSAMP_RES, ENDSAMP_SPAN, strm') = matchENDSAMP(strm')
      val FULL_SPAN = (#1(STARTSAMP_SPAN), #2(ENDSAMP_SPAN))
      in
        (UserCode.samp_PROD_1_ACT (ENDSAMP_RES, inline_RES, STARTSAMP_RES, ENDSAMP_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), STARTSAMP_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and code_NT (strm) = let
      val (STARTCODE_RES, STARTCODE_SPAN, strm') = matchSTARTCODE(strm)
      fun code_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun code_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(code_PROD_1_SUBRULE_1_PRED, code_PROD_1_SUBRULE_1_NT, strm')
      val (ENDCODE_RES, ENDCODE_SPAN, strm') = matchENDCODE(strm')
      val FULL_SPAN = (#1(STARTCODE_SPAN), #2(ENDCODE_SPAN))
      in
        (UserCode.code_PROD_1_ACT (ENDCODE_RES, inline_RES, STARTCODE_RES, ENDCODE_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), STARTCODE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and dfn_NT (strm) = let
      val (STARTDFN_RES, STARTDFN_SPAN, strm') = matchSTARTDFN(strm)
      fun dfn_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun dfn_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(dfn_PROD_1_SUBRULE_1_PRED, dfn_PROD_1_SUBRULE_1_NT, strm')
      val (ENDDFN_RES, ENDDFN_SPAN, strm') = matchENDDFN(strm')
      val FULL_SPAN = (#1(STARTDFN_SPAN), #2(ENDDFN_SPAN))
      in
        (UserCode.dfn_PROD_1_ACT (STARTDFN_RES, inline_RES, ENDDFN_RES, STARTDFN_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDDFN_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and strong_NT (strm) = let
      val (STARTSTRONG_RES, STARTSTRONG_SPAN, strm') = matchSTARTSTRONG(strm)
      fun strong_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun strong_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(strong_PROD_1_SUBRULE_1_PRED, strong_PROD_1_SUBRULE_1_NT, strm')
      val (ENDSTRONG_RES, ENDSTRONG_SPAN, strm') = matchENDSTRONG(strm')
      val FULL_SPAN = (#1(STARTSTRONG_SPAN), #2(ENDSTRONG_SPAN))
      in
        (UserCode.strong_PROD_1_ACT (STARTSTRONG_RES, inline_RES, ENDSTRONG_RES, STARTSTRONG_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDSTRONG_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and em_NT (strm) = let
      val (STARTEM_RES, STARTEM_SPAN, strm') = matchSTARTEM(strm)
      fun em_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun em_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(em_PROD_1_SUBRULE_1_PRED, em_PROD_1_SUBRULE_1_NT, strm')
      val (ENDEM_RES, ENDEM_SPAN, strm') = matchENDEM(strm')
      val FULL_SPAN = (#1(STARTEM_SPAN), #2(ENDEM_SPAN))
      in
        (UserCode.em_PROD_1_ACT (STARTEM_RES, ENDEM_RES, inline_RES, STARTEM_SPAN : (Lex.pos * Lex.pos), ENDEM_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and fontstyle_NT (strm) = let
      fun fontstyle_PROD_1 (strm) = let
            val (tt_RES, tt_SPAN, strm') = tt_NT(strm)
            val FULL_SPAN = (#1(tt_SPAN), #2(tt_SPAN))
            in
              ((tt_RES), FULL_SPAN, strm')
            end
      fun fontstyle_PROD_2 (strm) = let
            val (i_RES, i_SPAN, strm') = i_NT(strm)
            val FULL_SPAN = (#1(i_SPAN), #2(i_SPAN))
            in
              ((i_RES), FULL_SPAN, strm')
            end
      fun fontstyle_PROD_3 (strm) = let
            val (b_RES, b_SPAN, strm') = b_NT(strm)
            val FULL_SPAN = (#1(b_SPAN), #2(b_SPAN))
            in
              ((b_RES), FULL_SPAN, strm')
            end
      fun fontstyle_PROD_4 (strm) = let
            val (big_RES, big_SPAN, strm') = big_NT(strm)
            val FULL_SPAN = (#1(big_SPAN), #2(big_SPAN))
            in
              ((big_RES), FULL_SPAN, strm')
            end
      fun fontstyle_PROD_5 (strm) = let
            val (small_RES, small_SPAN, strm') = small_NT(strm)
            val FULL_SPAN = (#1(small_SPAN), #2(small_SPAN))
            in
              ((small_RES), FULL_SPAN, strm')
            end
      fun fontstyle_PROD_6 (strm) = let
            val (fontstyle_loose_RES, fontstyle_loose_SPAN, strm') = fontstyle_loose_NT(strm)
            val FULL_SPAN = (#1(fontstyle_loose_SPAN),
              #2(fontstyle_loose_SPAN))
            in
              ((fontstyle_loose_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTS(_), _, strm') => fontstyle_PROD_6(strm)
          | (Tok.STARTSTRIKE(_), _, strm') => fontstyle_PROD_6(strm)
          | (Tok.STARTU(_), _, strm') => fontstyle_PROD_6(strm)
          | (Tok.STARTBIG(_), _, strm') => fontstyle_PROD_4(strm)
          | (Tok.STARTI(_), _, strm') => fontstyle_PROD_2(strm)
          | (Tok.STARTTT(_), _, strm') => fontstyle_PROD_1(strm)
          | (Tok.STARTB(_), _, strm') => fontstyle_PROD_3(strm)
          | (Tok.STARTSMALL(_), _, strm') => fontstyle_PROD_5(strm)
          | _ => fail()
        (* end case *))
      end
and fontstyle_loose_NT (strm) = let
      fun fontstyle_loose_PROD_1 (strm) = let
            val (u_RES, u_SPAN, strm') = u_NT(strm)
            val FULL_SPAN = (#1(u_SPAN), #2(u_SPAN))
            in
              ((u_RES), FULL_SPAN, strm')
            end
      fun fontstyle_loose_PROD_2 (strm) = let
            val (s_RES, s_SPAN, strm') = s_NT(strm)
            val FULL_SPAN = (#1(s_SPAN), #2(s_SPAN))
            in
              ((s_RES), FULL_SPAN, strm')
            end
      fun fontstyle_loose_PROD_3 (strm) = let
            val (strike_RES, strike_SPAN, strm') = strike_NT(strm)
            val FULL_SPAN = (#1(strike_SPAN), #2(strike_SPAN))
            in
              ((strike_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTSTRIKE(_), _, strm') => fontstyle_loose_PROD_3(strm)
          | (Tok.STARTU(_), _, strm') => fontstyle_loose_PROD_1(strm)
          | (Tok.STARTS(_), _, strm') => fontstyle_loose_PROD_2(strm)
          | _ => fail()
        (* end case *))
      end
and strike_NT (strm) = let
      val (STARTSTRIKE_RES, STARTSTRIKE_SPAN, strm') = matchSTARTSTRIKE(strm)
      fun strike_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun strike_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(strike_PROD_1_SUBRULE_1_PRED, strike_PROD_1_SUBRULE_1_NT, strm')
      val (ENDSTRIKE_RES, ENDSTRIKE_SPAN, strm') = matchENDSTRIKE(strm')
      val FULL_SPAN = (#1(STARTSTRIKE_SPAN), #2(ENDSTRIKE_SPAN))
      in
        (UserCode.strike_PROD_1_ACT (STARTSTRIKE_RES, inline_RES, ENDSTRIKE_RES, STARTSTRIKE_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDSTRIKE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and s_NT (strm) = let
      val (STARTS_RES, STARTS_SPAN, strm') = matchSTARTS(strm)
      fun s_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun s_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(s_PROD_1_SUBRULE_1_PRED, s_PROD_1_SUBRULE_1_NT, strm')
      val (ENDS_RES, ENDS_SPAN, strm') = matchENDS(strm')
      val FULL_SPAN = (#1(STARTS_SPAN), #2(ENDS_SPAN))
      in
        (UserCode.s_PROD_1_ACT (ENDS_RES, STARTS_RES, inline_RES, ENDS_SPAN : (Lex.pos * Lex.pos), STARTS_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and u_NT (strm) = let
      val (STARTU_RES, STARTU_SPAN, strm') = matchSTARTU(strm)
      fun u_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun u_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(u_PROD_1_SUBRULE_1_PRED, u_PROD_1_SUBRULE_1_NT, strm')
      val (ENDU_RES, ENDU_SPAN, strm') = matchENDU(strm')
      val FULL_SPAN = (#1(STARTU_SPAN), #2(ENDU_SPAN))
      in
        (UserCode.u_PROD_1_ACT (ENDU_RES, STARTU_RES, inline_RES, ENDU_SPAN : (Lex.pos * Lex.pos), STARTU_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and small_NT (strm) = let
      val (STARTSMALL_RES, STARTSMALL_SPAN, strm') = matchSTARTSMALL(strm)
      fun small_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun small_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(small_PROD_1_SUBRULE_1_PRED, small_PROD_1_SUBRULE_1_NT, strm')
      val (ENDSMALL_RES, ENDSMALL_SPAN, strm') = matchENDSMALL(strm')
      val FULL_SPAN = (#1(STARTSMALL_SPAN), #2(ENDSMALL_SPAN))
      in
        (UserCode.small_PROD_1_ACT (ENDSMALL_RES, STARTSMALL_RES, inline_RES, ENDSMALL_SPAN : (Lex.pos * Lex.pos), STARTSMALL_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and big_NT (strm) = let
      val (STARTBIG_RES, STARTBIG_SPAN, strm') = matchSTARTBIG(strm)
      fun big_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun big_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(big_PROD_1_SUBRULE_1_PRED, big_PROD_1_SUBRULE_1_NT, strm')
      val (ENDBIG_RES, ENDBIG_SPAN, strm') = matchENDBIG(strm')
      val FULL_SPAN = (#1(STARTBIG_SPAN), #2(ENDBIG_SPAN))
      in
        (UserCode.big_PROD_1_ACT (STARTBIG_RES, inline_RES, ENDBIG_RES, STARTBIG_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), ENDBIG_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and b_NT (strm) = let
      val (STARTB_RES, STARTB_SPAN, strm') = matchSTARTB(strm)
      fun b_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun b_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(b_PROD_1_SUBRULE_1_PRED, b_PROD_1_SUBRULE_1_NT, strm')
      val (ENDB_RES, ENDB_SPAN, strm') = matchENDB(strm')
      val FULL_SPAN = (#1(STARTB_SPAN), #2(ENDB_SPAN))
      in
        (UserCode.b_PROD_1_ACT (ENDB_RES, STARTB_RES, inline_RES, ENDB_SPAN : (Lex.pos * Lex.pos), STARTB_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and i_NT (strm) = let
      val (STARTI_RES, STARTI_SPAN, strm') = matchSTARTI(strm)
      fun i_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun i_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(i_PROD_1_SUBRULE_1_PRED, i_PROD_1_SUBRULE_1_NT, strm')
      val (ENDI_RES, ENDI_SPAN, strm') = matchENDI(strm')
      val FULL_SPAN = (#1(STARTI_SPAN), #2(ENDI_SPAN))
      in
        (UserCode.i_PROD_1_ACT (ENDI_RES, STARTI_RES, inline_RES, ENDI_SPAN : (Lex.pos * Lex.pos), STARTI_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
and tt_NT (strm) = let
      val (STARTTT_RES, STARTTT_SPAN, strm') = matchSTARTTT(strm)
      fun tt_PROD_1_SUBRULE_1_NT (strm) = let
            val (inline_RES, inline_SPAN, strm') = inline_NT(strm)
            val FULL_SPAN = (#1(inline_SPAN), #2(inline_SPAN))
            in
              ((inline_RES), FULL_SPAN, strm')
            end
      fun tt_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (inline_RES, inline_SPAN, strm') = EBNF.closure(tt_PROD_1_SUBRULE_1_PRED, tt_PROD_1_SUBRULE_1_NT, strm')
      val (ENDTT_RES, ENDTT_SPAN, strm') = matchENDTT(strm')
      val FULL_SPAN = (#1(STARTTT_SPAN), #2(ENDTT_SPAN))
      in
        (UserCode.tt_PROD_1_ACT (STARTTT_RES, ENDTT_RES, inline_RES, STARTTT_SPAN : (Lex.pos * Lex.pos), ENDTT_SPAN : (Lex.pos * Lex.pos), inline_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun del_NT (strm) = let
      val (STARTDEL_RES, STARTDEL_SPAN, strm') = matchSTARTDEL(strm)
      fun del_PROD_1_SUBRULE_1_NT (strm) = let
            val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
            val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
            in
              ((flow_RES), FULL_SPAN, strm')
            end
      fun del_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (flow_RES, flow_SPAN, strm') = EBNF.closure(del_PROD_1_SUBRULE_1_PRED, del_PROD_1_SUBRULE_1_NT, strm')
      val (ENDDEL_RES, ENDDEL_SPAN, strm') = matchENDDEL(strm')
      val FULL_SPAN = (#1(STARTDEL_SPAN), #2(ENDDEL_SPAN))
      in
        (UserCode.del_PROD_1_ACT (flow_RES, STARTDEL_RES, ENDDEL_RES, flow_SPAN : (Lex.pos * Lex.pos), STARTDEL_SPAN : (Lex.pos * Lex.pos), ENDDEL_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun ins_NT (strm) = let
      val (STARTINS_RES, STARTINS_SPAN, strm') = matchSTARTINS(strm)
      fun ins_PROD_1_SUBRULE_1_NT (strm) = let
            val (flow_RES, flow_SPAN, strm') = flow_NT(strm)
            val FULL_SPAN = (#1(flow_SPAN), #2(flow_SPAN))
            in
              ((flow_RES), FULL_SPAN, strm')
            end
      fun ins_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTA(_), _, strm') => true
              | (Tok.STARTABBR(_), _, strm') => true
              | (Tok.STARTACRONYM(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTAPPLET(_), _, strm') => true
              | (Tok.STARTB(_), _, strm') => true
              | (Tok.STARTBASEFONT(_), _, strm') => true
              | (Tok.STARTBDO(_), _, strm') => true
              | (Tok.STARTBIG(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTBR(_), _, strm') => true
              | (Tok.STARTBUTTON(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTCITE(_), _, strm') => true
              | (Tok.STARTCODE(_), _, strm') => true
              | (Tok.STARTDFN(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTEM(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFONT(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTI(_), _, strm') => true
              | (Tok.STARTIFRAME(_), _, strm') => true
              | (Tok.STARTIMG(_), _, strm') => true
              | (Tok.STARTINPUT(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTKBD(_), _, strm') => true
              | (Tok.STARTLABEL(_), _, strm') => true
              | (Tok.STARTMAP(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTQ(_), _, strm') => true
              | (Tok.STARTS(_), _, strm') => true
              | (Tok.STARTSAMP(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSELECT(_), _, strm') => true
              | (Tok.STARTSMALL(_), _, strm') => true
              | (Tok.STARTSPAN(_), _, strm') => true
              | (Tok.STARTSTRIKE(_), _, strm') => true
              | (Tok.STARTSTRONG(_), _, strm') => true
              | (Tok.STARTSUB(_), _, strm') => true
              | (Tok.STARTSUP(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTTEXTAREA(_), _, strm') => true
              | (Tok.STARTTT(_), _, strm') => true
              | (Tok.STARTU(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | (Tok.STARTVAR(_), _, strm') => true
              | _ => false
            (* end case *))
      val (flow_RES, flow_SPAN, strm') = EBNF.closure(ins_PROD_1_SUBRULE_1_PRED, ins_PROD_1_SUBRULE_1_NT, strm')
      val (ENDINS_RES, ENDINS_SPAN, strm') = matchENDINS(strm')
      val FULL_SPAN = (#1(STARTINS_SPAN), #2(ENDINS_SPAN))
      in
        (UserCode.ins_PROD_1_ACT (flow_RES, STARTINS_RES, ENDINS_RES, flow_SPAN : (Lex.pos * Lex.pos), STARTINS_SPAN : (Lex.pos * Lex.pos), ENDINS_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun body_rest_NT (strm) = let
      fun body_rest_PROD_1_SUBRULE_1_NT (strm) = let
            fun body_rest_PROD_1_SUBRULE_1_PROD_1 (strm) = let
                  val (block_RES, block_SPAN, strm') = block_NT(strm)
                  val FULL_SPAN = (#1(block_SPAN), #2(block_SPAN))
                  in
                    ((block_RES), FULL_SPAN, strm')
                  end
            fun body_rest_PROD_1_SUBRULE_1_PROD_2 (strm) = let
                  val (script_RES, script_SPAN, strm') = script_NT(strm)
                  val FULL_SPAN = (#1(script_SPAN), #2(script_SPAN))
                  in
                    ((script_RES), FULL_SPAN, strm')
                  end
            fun body_rest_PROD_1_SUBRULE_1_PROD_3 (strm) = let
                  val (ins_RES, ins_SPAN, strm') = ins_NT(strm)
                  val FULL_SPAN = (#1(ins_SPAN), #2(ins_SPAN))
                  in
                    ((ins_RES), FULL_SPAN, strm')
                  end
            fun body_rest_PROD_1_SUBRULE_1_PROD_4 (strm) = let
                  val (del_RES, del_SPAN, strm') = del_NT(strm)
                  val FULL_SPAN = (#1(del_SPAN), #2(del_SPAN))
                  in
                    ((del_RES), FULL_SPAN, strm')
                  end
            fun body_rest_PROD_1_SUBRULE_1_PROD_5 (strm) = let
                  val (cdata_RES, cdata_SPAN, strm') = cdata_NT(strm)
                  val FULL_SPAN = (#1(cdata_SPAN), #2(cdata_SPAN))
                  in
                    ((cdata_RES), FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.COMMENT(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_5(strm)
                | (Tok.PCDATA(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_5(strm)
                | (Tok.CHAR_REF(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_5(strm)
                | (Tok.ENTITY_REF(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_5(strm)
                | (Tok.STARTINS(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_3(strm)
                | (Tok.STARTADDRESS(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTBLOCKQUOTE(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTCENTER(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTDIR(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTDIV(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTDL(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTFIELDSET(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTFORM(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTH1(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTH2(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTH3(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTH4(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTH5(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTH6(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTHR(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTISINDEX(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTMENU(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTNOSCRIPT(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTOL(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTP(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTPRE(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTTABLE(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTUL(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTSCRIPT(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_2(strm)
                | (Tok.STARTDEL(_), _, strm') =>
                    body_rest_PROD_1_SUBRULE_1_PROD_4(strm)
                | _ => fail()
              (* end case *))
            end
      fun body_rest_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTADDRESS(_), _, strm') => true
              | (Tok.STARTBLOCKQUOTE(_), _, strm') => true
              | (Tok.STARTCENTER(_), _, strm') => true
              | (Tok.STARTDEL(_), _, strm') => true
              | (Tok.STARTDIR(_), _, strm') => true
              | (Tok.STARTDIV(_), _, strm') => true
              | (Tok.STARTDL(_), _, strm') => true
              | (Tok.STARTFIELDSET(_), _, strm') => true
              | (Tok.STARTFORM(_), _, strm') => true
              | (Tok.STARTH1(_), _, strm') => true
              | (Tok.STARTH2(_), _, strm') => true
              | (Tok.STARTH3(_), _, strm') => true
              | (Tok.STARTH4(_), _, strm') => true
              | (Tok.STARTH5(_), _, strm') => true
              | (Tok.STARTH6(_), _, strm') => true
              | (Tok.STARTHR(_), _, strm') => true
              | (Tok.STARTINS(_), _, strm') => true
              | (Tok.STARTISINDEX(_), _, strm') => true
              | (Tok.STARTMENU(_), _, strm') => true
              | (Tok.STARTNOSCRIPT(_), _, strm') => true
              | (Tok.STARTOL(_), _, strm') => true
              | (Tok.STARTP(_), _, strm') => true
              | (Tok.STARTPRE(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTTABLE(_), _, strm') => true
              | (Tok.STARTUL(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR1_RES, SR1_SPAN, strm') = EBNF.closure(body_rest_PROD_1_SUBRULE_1_PRED, body_rest_PROD_1_SUBRULE_1_NT, strm)
      fun body_rest_PROD_1_SUBRULE_2_NT (strm) = let
            val (ENDBODY_RES, ENDBODY_SPAN, strm') = matchENDBODY(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(ENDBODY_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.body_rest_PROD_1_SUBRULE_2_PROD_1_ACT (SR1_RES, ENDBODY_RES, cdata_opt_RES, SR1_SPAN : (Lex.pos * Lex.pos), ENDBODY_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun body_rest_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.ENDBODY, _, strm') => true
              | _ => false
            (* end case *))
      val (SR2_RES, SR2_SPAN, strm') = EBNF.optional(body_rest_PROD_1_SUBRULE_2_PRED, body_rest_PROD_1_SUBRULE_2_NT, strm')
      val FULL_SPAN = (#1(SR1_SPAN), #2(SR2_SPAN))
      in
        (UserCode.body_rest_PROD_1_ACT (SR1_RES, SR2_RES, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun body_NT (strm) = let
      fun body_PROD_1 (strm) = let
            val (STARTBODY_RES, STARTBODY_SPAN, strm') = matchSTARTBODY(strm)
            val (body_rest_RES, body_rest_SPAN, strm') = body_rest_NT(strm')
            val FULL_SPAN = (#1(STARTBODY_SPAN), #2(body_rest_SPAN))
            in
              (UserCode.body_PROD_1_ACT (body_rest_RES, STARTBODY_RES, body_rest_SPAN : (Lex.pos * Lex.pos), STARTBODY_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun body_PROD_2 (strm) = let
            val (SR_RES, SR_SPAN, strm') = let
            fun body_PROD_2_SUBRULE_1_NT (strm) = let
                  fun body_PROD_2_SUBRULE_1_PROD_1 (strm) = let
                        val (block_RES, block_SPAN, strm') = block_NT(strm)
                        val FULL_SPAN = (#1(block_SPAN), #2(block_SPAN))
                        in
                          ((block_RES), FULL_SPAN, strm')
                        end
                  fun body_PROD_2_SUBRULE_1_PROD_2 (strm) = let
                        val (ins_RES, ins_SPAN, strm') = ins_NT(strm)
                        val FULL_SPAN = (#1(ins_SPAN), #2(ins_SPAN))
                        in
                          ((ins_RES), FULL_SPAN, strm')
                        end
                  fun body_PROD_2_SUBRULE_1_PROD_3 (strm) = let
                        val (del_RES, del_SPAN, strm') = del_NT(strm)
                        val FULL_SPAN = (#1(del_SPAN), #2(del_SPAN))
                        in
                          ((del_RES), FULL_SPAN, strm')
                        end
                  in
                    (case (lex(strm))
                     of (Tok.STARTDEL(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_3(strm)
                      | (Tok.STARTADDRESS(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTBLOCKQUOTE(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTCENTER(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTDIR(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTDIV(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTDL(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTFIELDSET(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTFORM(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTH1(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTH2(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTH3(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTH4(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTH5(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTH6(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTHR(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTISINDEX(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTMENU(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTNOSCRIPT(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTOL(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTP(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTPRE(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTTABLE(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTUL(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_1(strm)
                      | (Tok.STARTINS(_), _, strm') =>
                          body_PROD_2_SUBRULE_1_PROD_2(strm)
                      | _ => fail()
                    (* end case *))
                  end
            in
              body_PROD_2_SUBRULE_1_NT(strm)
            end
            val (body_rest_RES, body_rest_SPAN, strm') = body_rest_NT(strm')
            val FULL_SPAN = (#1(SR_SPAN), #2(body_rest_SPAN))
            in
              (UserCode.body_PROD_2_ACT (SR_RES, body_rest_RES, SR_SPAN : (Lex.pos * Lex.pos), body_rest_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTADDRESS(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTBLOCKQUOTE(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTCENTER(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTDEL(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTDIR(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTDIV(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTDL(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTFIELDSET(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTFORM(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTH1(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTH2(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTH3(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTH4(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTH5(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTH6(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTHR(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTINS(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTISINDEX(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTMENU(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTNOSCRIPT(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTOL(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTP(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTPRE(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTTABLE(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTUL(_), _, strm') => body_PROD_2(strm)
          | (Tok.STARTBODY(_), _, strm') => body_PROD_1(strm)
          | _ => fail()
        (* end case *))
      end
fun noframes_NT (strm) = let
      val (STARTNOFRAMES_RES, STARTNOFRAMES_SPAN, strm') = matchSTARTNOFRAMES(strm)
      val (body_RES, body_SPAN, strm') = body_NT(strm')
      val (ENDNOFRAMES_RES, ENDNOFRAMES_SPAN, strm') = matchENDNOFRAMES(strm')
      val FULL_SPAN = (#1(STARTNOFRAMES_SPAN), #2(ENDNOFRAMES_SPAN))
      in
        (UserCode.noframes_PROD_1_ACT (body_RES, STARTNOFRAMES_RES, ENDNOFRAMES_RES, body_SPAN : (Lex.pos * Lex.pos), STARTNOFRAMES_SPAN : (Lex.pos * Lex.pos), ENDNOFRAMES_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun frame_NT (strm) = let
      val (STARTFRAME_RES, STARTFRAME_SPAN, strm') = matchSTARTFRAME(strm)
      val FULL_SPAN = (#1(STARTFRAME_SPAN), #2(STARTFRAME_SPAN))
      in
        (UserCode.frame_PROD_1_ACT (STARTFRAME_RES, STARTFRAME_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun frameset_NT (strm) = let
      val (STARTFRAMESET_RES, STARTFRAMESET_SPAN, strm') = matchSTARTFRAMESET(strm)
      fun frameset_PROD_1_SUBRULE_1_NT (strm) = let
            fun frameset_PROD_1_SUBRULE_1_PROD_1 (strm) = let
                  val (frameset_RES, frameset_SPAN, strm') = frameset_NT(strm)
                  val FULL_SPAN = (#1(frameset_SPAN), #2(frameset_SPAN))
                  in
                    ((frameset_RES), FULL_SPAN, strm')
                  end
            fun frameset_PROD_1_SUBRULE_1_PROD_2 (strm) = let
                  val (frame_RES, frame_SPAN, strm') = frame_NT(strm)
                  val FULL_SPAN = (#1(frame_SPAN), #2(frame_SPAN))
                  in
                    ((frame_RES), FULL_SPAN, strm')
                  end
            fun frameset_PROD_1_SUBRULE_1_PROD_3 (strm) = let
                  val (cdata_RES, cdata_SPAN, strm') = cdata_NT(strm)
                  val FULL_SPAN = (#1(cdata_SPAN), #2(cdata_SPAN))
                  in
                    ((cdata_RES), FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.COMMENT(_), _, strm') =>
                    frameset_PROD_1_SUBRULE_1_PROD_3(strm)
                | (Tok.PCDATA(_), _, strm') =>
                    frameset_PROD_1_SUBRULE_1_PROD_3(strm)
                | (Tok.CHAR_REF(_), _, strm') =>
                    frameset_PROD_1_SUBRULE_1_PROD_3(strm)
                | (Tok.ENTITY_REF(_), _, strm') =>
                    frameset_PROD_1_SUBRULE_1_PROD_3(strm)
                | (Tok.STARTFRAMESET(_), _, strm') =>
                    frameset_PROD_1_SUBRULE_1_PROD_1(strm)
                | (Tok.STARTFRAME(_), _, strm') =>
                    frameset_PROD_1_SUBRULE_1_PROD_2(strm)
                | _ => fail()
              (* end case *))
            end
      fun frameset_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.COMMENT(_), _, strm') => true
              | (Tok.PCDATA(_), _, strm') => true
              | (Tok.CHAR_REF(_), _, strm') => true
              | (Tok.ENTITY_REF(_), _, strm') => true
              | (Tok.STARTFRAME(_), _, strm') => true
              | (Tok.STARTFRAMESET(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR1_RES, SR1_SPAN, strm') = EBNF.posclos(frameset_PROD_1_SUBRULE_1_PRED, frameset_PROD_1_SUBRULE_1_NT, strm')
      fun frameset_PROD_1_SUBRULE_2_NT (strm) = let
            val (noframes_RES, noframes_SPAN, strm') = noframes_NT(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(noframes_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.frameset_PROD_1_SUBRULE_2_PROD_1_ACT (SR1_RES, noframes_RES, STARTFRAMESET_RES, cdata_opt_RES, SR1_SPAN : (Lex.pos * Lex.pos), noframes_SPAN : (Lex.pos * Lex.pos), STARTFRAMESET_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun frameset_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.STARTNOFRAMES(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR2_RES, SR2_SPAN, strm') = EBNF.optional(frameset_PROD_1_SUBRULE_2_PRED, frameset_PROD_1_SUBRULE_2_NT, strm')
      val (ENDFRAMESET_RES, ENDFRAMESET_SPAN, strm') = matchENDFRAMESET(strm')
      val FULL_SPAN = (#1(STARTFRAMESET_SPAN), #2(ENDFRAMESET_SPAN))
      in
        (UserCode.frameset_PROD_1_ACT (SR1_RES, SR2_RES, STARTFRAMESET_RES, ENDFRAMESET_RES, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), STARTFRAMESET_SPAN : (Lex.pos * Lex.pos), ENDFRAMESET_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun link_NT (strm) = let
      val (STARTLINK_RES, STARTLINK_SPAN, strm') = matchSTARTLINK(strm)
      val FULL_SPAN = (#1(STARTLINK_SPAN), #2(STARTLINK_SPAN))
      in
        (UserCode.link_PROD_1_ACT (STARTLINK_RES, STARTLINK_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun meta_NT (strm) = let
      val (STARTMETA_RES, STARTMETA_SPAN, strm') = matchSTARTMETA(strm)
      val FULL_SPAN = (#1(STARTMETA_SPAN), #2(STARTMETA_SPAN))
      in
        (UserCode.meta_PROD_1_ACT (STARTMETA_RES, STARTMETA_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun style_NT (strm) = let
      val (STARTSTYLE_RES, STARTSTYLE_SPAN, strm') = matchSTARTSTYLE(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      val (ENDSTYLE_RES, ENDSTYLE_SPAN, strm') = matchENDSTYLE(strm')
      val FULL_SPAN = (#1(STARTSTYLE_SPAN), #2(ENDSTYLE_SPAN))
      in
        (UserCode.style_PROD_1_ACT (ENDSTYLE_RES, STARTSTYLE_RES, cdata_opt_RES, ENDSTYLE_SPAN : (Lex.pos * Lex.pos), STARTSTYLE_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun base_NT (strm) = let
      val (STARTBASE_RES, STARTBASE_SPAN, strm') = matchSTARTBASE(strm)
      val FULL_SPAN = (#1(STARTBASE_SPAN), #2(STARTBASE_SPAN))
      in
        (UserCode.base_PROD_1_ACT (STARTBASE_RES, STARTBASE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun title_NT (strm) = let
      val (STARTTITLE_RES, STARTTITLE_SPAN, strm') = matchSTARTTITLE(strm)
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
      val (ENDTITLE_RES, ENDTITLE_SPAN, strm') = matchENDTITLE(strm')
      val FULL_SPAN = (#1(STARTTITLE_SPAN), #2(ENDTITLE_SPAN))
      in
        (UserCode.title_PROD_1_ACT (ENDTITLE_RES, STARTTITLE_RES, cdata_opt_RES, ENDTITLE_SPAN : (Lex.pos * Lex.pos), STARTTITLE_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun head_content_NT (strm) = let
      fun head_content_PROD_1 (strm) = let
            val (title_RES, title_SPAN, strm') = title_NT(strm)
            val FULL_SPAN = (#1(title_SPAN), #2(title_SPAN))
            in
              ((title_RES), FULL_SPAN, strm')
            end
      fun head_content_PROD_2 (strm) = let
            val (base_RES, base_SPAN, strm') = base_NT(strm)
            val FULL_SPAN = (#1(base_SPAN), #2(base_SPAN))
            in
              ((base_RES), FULL_SPAN, strm')
            end
      fun head_content_PROD_3 (strm) = let
            val (script_RES, script_SPAN, strm') = script_NT(strm)
            val FULL_SPAN = (#1(script_SPAN), #2(script_SPAN))
            in
              ((script_RES), FULL_SPAN, strm')
            end
      fun head_content_PROD_4 (strm) = let
            val (style_RES, style_SPAN, strm') = style_NT(strm)
            val FULL_SPAN = (#1(style_SPAN), #2(style_SPAN))
            in
              ((style_RES), FULL_SPAN, strm')
            end
      fun head_content_PROD_5 (strm) = let
            val (meta_RES, meta_SPAN, strm') = meta_NT(strm)
            val FULL_SPAN = (#1(meta_SPAN), #2(meta_SPAN))
            in
              ((meta_RES), FULL_SPAN, strm')
            end
      fun head_content_PROD_6 (strm) = let
            val (link_RES, link_SPAN, strm') = link_NT(strm)
            val FULL_SPAN = (#1(link_SPAN), #2(link_SPAN))
            in
              ((link_RES), FULL_SPAN, strm')
            end
      fun head_content_PROD_7 (strm) = let
            val (object_RES, object_SPAN, strm') = object_NT(strm)
            val FULL_SPAN = (#1(object_SPAN), #2(object_SPAN))
            in
              ((object_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.STARTOBJECT(_), _, strm') => head_content_PROD_7(strm)
          | (Tok.STARTMETA(_), _, strm') => head_content_PROD_5(strm)
          | (Tok.STARTSCRIPT(_), _, strm') => head_content_PROD_3(strm)
          | (Tok.STARTTITLE(_), _, strm') => head_content_PROD_1(strm)
          | (Tok.STARTBASE(_), _, strm') => head_content_PROD_2(strm)
          | (Tok.STARTSTYLE(_), _, strm') => head_content_PROD_4(strm)
          | (Tok.STARTLINK(_), _, strm') => head_content_PROD_6(strm)
          | _ => fail()
        (* end case *))
      end
fun head_NT (strm) = let
      fun head_PROD_1_SUBRULE_1_NT (strm) = let
            val (STARTHEAD_RES, STARTHEAD_SPAN, strm') = matchSTARTHEAD(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(STARTHEAD_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.head_PROD_1_SUBRULE_1_PROD_1_ACT (cdata_opt_RES, STARTHEAD_RES, cdata_opt_SPAN : (Lex.pos * Lex.pos), STARTHEAD_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun head_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.STARTHEAD(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR1_RES, SR1_SPAN, strm') = EBNF.optional(head_PROD_1_SUBRULE_1_PRED, head_PROD_1_SUBRULE_1_NT, strm)
      fun head_PROD_1_SUBRULE_2_NT (strm) = let
            val (head_content_RES, head_content_SPAN, strm') = head_content_NT(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(head_content_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.head_PROD_1_SUBRULE_2_PROD_1_ACT (SR1_RES, cdata_opt_RES, head_content_RES, SR1_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), head_content_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun head_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.STARTBASE(_), _, strm') => true
              | (Tok.STARTLINK(_), _, strm') => true
              | (Tok.STARTMETA(_), _, strm') => true
              | (Tok.STARTOBJECT(_), _, strm') => true
              | (Tok.STARTSCRIPT(_), _, strm') => true
              | (Tok.STARTSTYLE(_), _, strm') => true
              | (Tok.STARTTITLE(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR2_RES, SR2_SPAN, strm') = EBNF.closure(head_PROD_1_SUBRULE_2_PRED, head_PROD_1_SUBRULE_2_NT, strm')
      fun head_PROD_1_SUBRULE_3_NT (strm) = let
            val (ENDHEAD_RES, ENDHEAD_SPAN, strm') = matchENDHEAD(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(ENDHEAD_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.head_PROD_1_SUBRULE_3_PROD_1_ACT (SR1_RES, SR2_RES, ENDHEAD_RES, cdata_opt_RES, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), ENDHEAD_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun head_PROD_1_SUBRULE_3_PRED (strm) = (case (lex(strm))
             of (Tok.ENDHEAD, _, strm') => true
              | _ => false
            (* end case *))
      val (SR3_RES, SR3_SPAN, strm') = EBNF.optional(head_PROD_1_SUBRULE_3_PRED, head_PROD_1_SUBRULE_3_NT, strm')
      val FULL_SPAN = (#1(SR1_SPAN), #2(SR3_SPAN))
      in
        (UserCode.head_PROD_1_ACT (SR1_RES, SR2_RES, SR3_RES, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), SR3_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
fun document_NT (strm) = let
      val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm)
      fun document_PROD_1_SUBRULE_1_NT (strm) = let
            val (DOCTYPE_RES, DOCTYPE_SPAN, strm') = matchDOCTYPE(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(DOCTYPE_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.document_PROD_1_SUBRULE_1_PROD_1_ACT (cdata_opt_RES, DOCTYPE_RES, cdata_opt_SPAN : (Lex.pos * Lex.pos), DOCTYPE_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun document_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.DOCTYPE(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR1_RES, SR1_SPAN, strm') = EBNF.optional(document_PROD_1_SUBRULE_1_PRED, document_PROD_1_SUBRULE_1_NT, strm')
      fun document_PROD_1_SUBRULE_2_NT (strm) = let
            val (STARTHTML_RES, STARTHTML_SPAN, strm') = matchSTARTHTML(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(STARTHTML_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.document_PROD_1_SUBRULE_2_PROD_1_ACT (SR1_RES, cdata_opt_RES, STARTHTML_RES, SR1_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), STARTHTML_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun document_PROD_1_SUBRULE_2_PRED (strm) = (case (lex(strm))
             of (Tok.STARTHTML(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR2_RES, SR2_SPAN, strm') = EBNF.optional(document_PROD_1_SUBRULE_2_PRED, document_PROD_1_SUBRULE_2_NT, strm')
      val (head_RES, head_SPAN, strm') = head_NT(strm')
      val (SR3_RES, SR3_SPAN, strm') = let
      fun document_PROD_1_SUBRULE_3_NT (strm) = let
            fun document_PROD_1_SUBRULE_3_PROD_1 (strm) = let
                  val (body_RES, body_SPAN, strm') = body_NT(strm)
                  val FULL_SPAN = (#1(body_SPAN), #2(body_SPAN))
                  in
                    ((body_RES), FULL_SPAN, strm')
                  end
            fun document_PROD_1_SUBRULE_3_PROD_2 (strm) = let
                  val (frameset_RES, frameset_SPAN, strm') = frameset_NT(strm)
                  val FULL_SPAN = (#1(frameset_SPAN), #2(frameset_SPAN))
                  in
                    ((frameset_RES), FULL_SPAN, strm')
                  end
            in
              (case (lex(strm))
               of (Tok.STARTFRAMESET(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_2(strm)
                | (Tok.STARTADDRESS(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTBLOCKQUOTE(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTBODY(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTCENTER(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTDEL(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTDIR(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTDIV(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTDL(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTFIELDSET(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTFORM(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTH1(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTH2(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTH3(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTH4(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTH5(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTH6(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTHR(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTINS(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTISINDEX(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTMENU(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTNOSCRIPT(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTOL(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTP(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTPRE(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTTABLE(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | (Tok.STARTUL(_), _, strm') =>
                    document_PROD_1_SUBRULE_3_PROD_1(strm)
                | _ => fail()
              (* end case *))
            end
      in
        document_PROD_1_SUBRULE_3_NT(strm')
      end
      fun document_PROD_1_SUBRULE_4_NT (strm) = let
            val (ENDHTML_RES, ENDHTML_SPAN, strm') = matchENDHTML(strm)
            val (cdata_opt_RES, cdata_opt_SPAN, strm') = cdata_opt_NT(strm')
            val FULL_SPAN = (#1(ENDHTML_SPAN), #2(cdata_opt_SPAN))
            in
              (UserCode.document_PROD_1_SUBRULE_4_PROD_1_ACT (SR1_RES, SR2_RES, SR3_RES, head_RES, ENDHTML_RES, cdata_opt_RES, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), SR3_SPAN : (Lex.pos * Lex.pos), head_SPAN : (Lex.pos * Lex.pos), ENDHTML_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
                FULL_SPAN, strm')
            end
      fun document_PROD_1_SUBRULE_4_PRED (strm) = (case (lex(strm))
             of (Tok.ENDHTML, _, strm') => true
              | _ => false
            (* end case *))
      val (SR4_RES, SR4_SPAN, strm') = EBNF.optional(document_PROD_1_SUBRULE_4_PRED, document_PROD_1_SUBRULE_4_NT, strm')
      val FULL_SPAN = (#1(cdata_opt_SPAN), #2(SR4_SPAN))
      in
        (UserCode.document_PROD_1_ACT (SR1_RES, SR2_RES, SR3_RES, SR4_RES, head_RES, cdata_opt_RES, SR1_SPAN : (Lex.pos * Lex.pos), SR2_SPAN : (Lex.pos * Lex.pos), SR3_SPAN : (Lex.pos * Lex.pos), SR4_SPAN : (Lex.pos * Lex.pos), head_SPAN : (Lex.pos * Lex.pos), cdata_opt_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos)),
          FULL_SPAN, strm')
      end
in
  (document_NT, body_NT, flow_NT, block_NT, inline_NT, cdata_opt_NT)
end
val document_NT =  fn s => unwrap (Err.launch (eh, lexFn, document_NT , true) s)
val body_NT =  fn s => unwrap (Err.launch (eh, lexFn, body_NT , false) s)
val flow_NT =  fn s => unwrap (Err.launch (eh, lexFn, flow_NT , false) s)
val block_NT =  fn s => unwrap (Err.launch (eh, lexFn, block_NT , false) s)
val inline_NT =  fn s => unwrap (Err.launch (eh, lexFn, inline_NT , false) s)
val cdata_opt_NT =  fn s => unwrap (Err.launch (eh, lexFn, cdata_opt_NT , false) s)

in (document_NT, body_NT, flow_NT, block_NT, inline_NT, cdata_opt_NT) end
  in
fun parse lexFn  s = let val (document_NT, body_NT, flow_NT, block_NT, inline_NT, cdata_opt_NT) = mk lexFn in document_NT s end

fun parsebody lexFn  s = let val (document_NT, body_NT, flow_NT, block_NT, inline_NT, cdata_opt_NT) = mk lexFn in body_NT s end

fun parseflow lexFn  s = let val (document_NT, body_NT, flow_NT, block_NT, inline_NT, cdata_opt_NT) = mk lexFn in flow_NT s end

fun parseblock lexFn  s = let val (document_NT, body_NT, flow_NT, block_NT, inline_NT, cdata_opt_NT) = mk lexFn in block_NT s end

fun parseinline lexFn  s = let val (document_NT, body_NT, flow_NT, block_NT, inline_NT, cdata_opt_NT) = mk lexFn in inline_NT s end

fun parsecdata_opt lexFn  s = let val (document_NT, body_NT, flow_NT, block_NT, inline_NT, cdata_opt_NT) = mk lexFn in cdata_opt_NT s end

  end

end
