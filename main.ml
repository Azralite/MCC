open Ast
open PrintAst

let creat_chan_out chan =
  let nb = String.length chan in
  let tmp = String.sub chan 0 (nb-2) in
  tmp ^ "_ast.txt"

let () =
  let fichier = Sys.argv.(1) in
  let c = open_in fichier in
  let chan_out = creat_chan_out fichier in
  let lexbuf = Lexing.from_channel c in
  try
    let prog = Parser.prog Lexer.token lexbuf in
    affiche_fun prog chan_out;
    close_in c;
    exit 0
  with
  | Ast.ErrorSyntax s -> let msg = Printf.sprintf "%s Ligne : %d Caractère : %d\n" s lexbuf.lex_start_p.pos_lnum (lexbuf.lex_start_p.pos_cnum - lexbuf.lex_start_p.pos_bol) in
    failwith (msg)
  |  TypeError -> let msg = Printf.sprintf "Erreur de type  Ligne : %d Caractère : %d\n"  lexbuf.lex_start_p.pos_lnum (lexbuf.lex_start_p.pos_cnum - lexbuf.lex_start_p.pos_bol) in
  failwith (msg)
  |  VarNotFound -> let msg = Printf.sprintf "Variable not found Ligne : %d Caractère : %d\n"  lexbuf.lex_start_p.pos_lnum (lexbuf.lex_start_p.pos_cnum - lexbuf.lex_start_p.pos_bol) in
    failwith (msg)
  |  FunNotFound -> let msg = Printf.sprintf "Function not found Ligne : %d Caractère : %d\n"  lexbuf.lex_start_p.pos_lnum (lexbuf.lex_start_p.pos_cnum - lexbuf.lex_start_p.pos_bol) in
    failwith (msg)
  |  DivisionParZero -> let msg = Printf.sprintf "Division by 0 Ligne : %d Caractère : %d\n"  lexbuf.lex_start_p.pos_lnum (lexbuf.lex_start_p.pos_cnum - lexbuf.lex_start_p.pos_bol) in
  failwith (msg)
