(* match-tree.sml
 *
 * COPYRIGHT (c) 2008 The Fellowship of SML/NJ (http://www.smlnj.org)
 * All rights reserved.
 *
 * Match trees are used to represent the results of matching regular
 * expressions.
 *)

signature MATCH_TREE =
  sig

  (* a match tree is used to represent the results of a nested
   * grouping of regular expressions.
   *)
    datatype 'a match_tree = Match of 'a * 'a match_tree list

    val root : 'a match_tree -> 'a
	(* return the root (outermost) match in the tree *)
    val nth : ('a match_tree * int) -> 'a (* raises Subscript *)
	(* return the nth match in the tree; matches are labeled in pre-order
	 * starting at 0.
	 *)
    val map : ('a -> 'b) -> 'a match_tree -> 'b match_tree
	(* map a function over the tree (in preorder) *)
    val app : ('a -> unit) -> 'a match_tree -> unit
	(* apply a given function over ever element of the tree (in preorder) *)
    val find : ('a -> bool) -> 'a match_tree -> 'a option
	(* find the first match that satisfies the predicate (or NONE) *)
    val num : 'a match_tree -> int
	(* return the number of submatches included in the match tree *)
  end;

structure MatchTree :> MATCH_TREE =
  struct

    datatype 'a match_tree = Match of 'a * 'a match_tree list

    fun num m = let
	  fun countList [] = 0
	    | countList ((Match (x,l))::ms) = 1+countList(l)+countList(ms)
	  in
	    (countList [m])-1
	  end

  (* return the root (outermost) match in the tree *)
    fun root (Match(x,_)) = x

  (* return the nth match in the tree; matches are labeled in pre-order
   * starting at 0.
   *)
    fun nth (t, n) = let
	  datatype 'a sum = INL of int | INR of 'a
	  fun walk (0, Match (x, _)) = INR x
	    | walk (i, Match (_, children)) = let
		fun walkList (i, []) = INL i
		  | walkList (i, m::r) = (case walk(i, m)
		       of (INL j) => walkList (j, r)
			| result => result
		      (* end case *))
		in
		  walkList (i-1, children)
		end
	  in
	    case walk(n, t)
	     of (INR x) => x
	      | (INL _) => raise Subscript
	    (* end case *)
	  end

  (* map a function over the tree (in preorder) *)
    fun map f = let
	  fun mapf (Match (x, children)) = Match(f x, mapl children)
	  and mapl [] = []
	    | mapl (x::r) = (mapf x) :: (mapl r)
	  in
	    mapf
	  end

    fun app f (Match (c,children)) = (f c; List.app (app f) children)

  (* find the first match that satisfies the predicate *)
    fun find pred = let
	  fun findP (Match (x, children)) =
		if (pred x)
		  then SOME x
		  else findList children
	  and findList [] = NONE
	    | findList (m::r) = (case (findP m)
		 of NONE => findList r
		  | result => result
		(* end case *))
	  in
	    findP
	  end

  end (* MatchTree *)

