(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(************************************************************************)
(* SerAPI: Coq interaction protocol with bidirectional serialization    *)
(************************************************************************)
(* Copyright 2016-2019 MINES ParisTech -- License LGPL 2.1+             *)
(* Copyright 2019-2023 Inria           -- License LGPL 2.1+             *)
(* Written by: Emilio J. Gallego Arias and others                       *)
(************************************************************************)

type definition_object_kind =
  [%import: Decls.definition_object_kind]
  [@@deriving sexp,yojson,hash,compare]

type theorem_kind =
  [%import: Decls.theorem_kind]
  [@@deriving sexp,yojson,hash,compare]

type assumption_object_kind =
  [%import: Decls.assumption_object_kind]
  [@@deriving sexp,yojson,hash,compare]

type logical_kind =
  [%import: Decls.logical_kind]
  [@@deriving sexp,yojson,hash,compare]