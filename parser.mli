
(* The type of tokens. *)

type token = 
  | WHILE
  | VIRG
  | TYPE of (Ast.typ)
  | SEMI
  | RETURN
  | PRINT
  | PLUS
  | PAR_O
  | PAR_F
  | INF
  | IF
  | IDENT of (string)
  | FIN
  | ETOILE
  | ELSE
  | EGAL
  | CST of (int)
  | ACC_O
  | ACC_F

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog)
