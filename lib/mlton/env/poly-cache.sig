signature POLY_CACHE =
   sig
      include FINITE_FUNCTION
      
      val addNew: ('a, 'b) t * 'a * 'b -> unit
      val eq: ('a, 'b) t * ('a, 'b) t -> bool
      val fromList: {equal: 'a * 'a -> bool, elements: ('a * 'b) list} -> ('a, 'b) t
      val getOrAdd: ('a, 'b) t * 'a * (unit -> 'b) -> 'b
      val new: {equal: 'a * 'a -> bool} -> ('a, 'b) t
      val peek: ('a, 'b) t * 'a -> 'b option
      val toList: ('a, 'b) t -> ('a * 'b) list
   end 
