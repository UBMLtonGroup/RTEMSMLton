signature DYNAMIC_WIND =
   sig
      (* wind(f, g) returns f(), and computes g() when f finishes or raises *)
      val wind: (unit -> 'a) * (unit -> unit) -> 'a
      (* windFail(f, g) returns f(), and computes g() only if f raises *)
      val windFail: (unit -> 'a) * (unit -> unit) -> 'a
      val withEscape: (('a -> 'b) -> 'a) -> 'a
   end
