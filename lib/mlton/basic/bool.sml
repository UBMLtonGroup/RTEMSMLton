(*-------------------------------------------------------------------*)
(*                               Bool                                *)
(*-------------------------------------------------------------------*)

structure Bool: BOOL =
struct
   
open Pervasive.Bool
   
type t = bool

val compare =
   let open Relation
   in fn (false, false) => EQUAL
       | (false, true) => LESS
       | (true, false) => GREATER
       | (true, true) => EQUAL
   end

val equals =
   fn (true, true) => true
    | (false, false) => true
    | _ => false

val layout = Layout.str o toString
(*fun output(b, out) = Pervasive.IO.output(out, toString b)*)
   
end
