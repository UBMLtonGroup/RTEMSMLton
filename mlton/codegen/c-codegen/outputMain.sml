val ins = TextIO.openIn "default-configuration.c"
val outs = TextIO.openOut "default-configuration.sml"
val () = TextIO.output(outs, "structure RtemsMain = \n   struct\n      val defaultMain = \"")
val () = TextIO.output(outs, (String.toString o TextIO.inputAll) ins) before TextIO.closeIn ins
val () = TextIO.output(outs, "\"\n   end (* structure RtemsMain *)") before TextIO.closeOut outs
