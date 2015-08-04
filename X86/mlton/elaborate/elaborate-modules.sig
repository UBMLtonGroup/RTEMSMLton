(* Copyright (C) 2012 Matthew Fluet.
 * Copyright (C) 1999-2005 Henry Cejtin, Matthew Fluet, Suresh
 *    Jagannathan, and Stephen Weeks.
 * Copyright (C) 1997-2000 NEC Research Institute.
 *
 * MLton is released under a BSD-style license.
 * See the file MLton-LICENSE for details.
 *)

signature ELABORATE_MODULES_STRUCTS = 
   sig
      structure Ast: AST
      structure CoreML: CORE_ML
      structure Decs: DECS
      structure Env: ELABORATE_ENV
      sharing Ast = Env.Ast
      sharing Ast.Tyvar = CoreML.Tyvar
      sharing CoreML = Decs.CoreML = Env.CoreML
      sharing Decs = Env.Decs
   end

signature ELABORATE_MODULES = 
   sig
      include ELABORATE_MODULES_STRUCTS

      (* Elaborate Topdec in env, returning Core ML decs. *)
      val elaborateTopdec: Ast.Topdec.t * {env: Env.t} -> Decs.t
      val reportSequenceNonUnit: unit -> unit
      val reportUndeterminedTypes: unit -> unit
      val reportUnresolvedFlexRecords: unit -> unit
      val resolveOverloads: unit -> unit
   end
