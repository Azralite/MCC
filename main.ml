open Ast
open PrintAst

let chan_out = "ast.txt"

let () =
  let fichier = Sys.argv.(1) in
  let c = open_in fichier in
  let lexbuf = Lexing.from_channel c in
  let prog = Parser.prog Lexer.token lexbuf in
  affiche_fun prog chan_out;
  close_in c;
  exit 0
