structure Dir:> DIR =
struct

structure FS = OS.FileSys

type t = string
type file = string

fun toString d = d

val layout = Layout.str

val root = "/"

local
   open FS
in
   val current = getDir
   val remove = rmDir
   val cd = chDir
   val cd = Trace.trace ("Dir.cd", layout, Unit.layout) cd
   val make = mkDir
end

fun isDir d = FS.isDir d handle OS.SysErr _ => false

val doesExist = File.doesExist

fun inDir (d, th) =
   let
      val cur = current ()
   in
      cd d
      ; DynamicWind.wind (th, fn () => cd cur)
   end

fun fold (d: t, a: 'a, f: string * 'a -> 'a): 'a =
   let
      val stream = FS.openDir d
      fun loop a =
	 case FS.readDir stream of
	    "" => a
	  | "." => raise Fail "read saw ."
	  | ".." => raise Fail "read saw .."
	  | s => loop (f (s, a))
   in DynamicWind.wind (fn () => loop a, fn () => FS.closeDir stream)
   end

fun ls d =
   fold (d, ([], []), fn (x, (dirs, files)) =>
	 if FS.isLink x
	    then (dirs, files)
	 else if isDir x
		 then (x :: dirs, files)
	      else (dirs, x :: files))
   
val lsDirs = #1 o ls
val lsFiles = #2 o ls
   
fun removeR d =
   let
      val old = current ()
      val _ = cd d
      (* loop removes everything in the current directory *)
      fun loop () =
	 fold (".", (), fn (s, ()) =>
	       if isDir s
		  then (cd s
			; loop ()
			; cd ".."
			; remove s)
	       else File.remove s)
      val _ = loop ()
      val _ = cd old
      val _ = remove d
   in
      ()
   end

fun inTemp thunk =
   let
      val d = concat ["/tmp/dir", Random.alphaNumString 6]
      val _ = make d
   in
      DynamicWind.wind (fn () => inDir (d, fn _ => thunk ()),
			fn () => removeR d)
   end

end
