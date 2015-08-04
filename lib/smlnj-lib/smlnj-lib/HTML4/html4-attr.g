(* ______________________________________________________________________
   html4-attr.g

   Grammar for parsing HTML 4 attributes.
   ______________________________________________________________________ *)

%name HTML4Attr;

%tokens : NAME of Atom.atom
        | EQUALS ("=")
        | STRINGLIT of string
        | DOT (".")
        | NUMBER of string
;

%start attrs;

attrs : attr*
      ;

attr : NAME (EQUALS attr_value => (attr_value))?
       => ((NAME, SR))
     ;

attr_value : STRINGLIT
           | NAME (DOT NAME => (NAME))*
             => ((Atom.toString NAME) ^ (String.concatWith "."
                                         (map Atom.toString SR)))
           | NUMBER (DOT NUMBER => (NUMBER))*
             => (NUMBER ^ (String.concatWith "." SR))
           ;

(* ______________________________________________________________________
   End of html4-attr.g
   ______________________________________________________________________ *)
