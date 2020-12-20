{
  open Lexing
  open Parser

  let keyword_or_ident =
    let h = Hashtbl.create 17 in
    List.iter
      (fun (s, k) -> Hashtbl.add h s k)
      [ "if",   IF;
        "else", ELSE;
        "while", WHILE;
        "putchar", PRINT;
        "return", RETURN;
      ] ;
    fun s ->
      try  Hashtbl.find h s
      with Not_found -> IDENT(s)
}

let alpha = ['a'-'z' 'A'-'Z']
let nombre = '-'? ['0'-'9']+
let ident =
  (alpha) (alpha | nombre | '_')*

let type = "int" | "bool" | "void"


rule token = parse
  | ['\n']
      { new_line lexbuf; token lexbuf }
  | [' ' '\t' '\r']+
      { token lexbuf }
  | type as t
      {match t with
      | "int" ->  TYPE(Int)
      | "bool" ->  TYPE(Bool)
      | "void" ->  TYPE(Void)
      | _ -> let message = Printf.sprintf "Probleme de type" in
      failwith message}
  | "/*"
      { comment lexbuf; token lexbuf }
  | "//"
      { comment_line lexbuf; token lexbuf}
  | nombre as n
      {CST(int_of_string n) }
  | ident as id
      {keyword_or_ident id }
  | '+'   {  PLUS }
  | '*'   {  ETOILE }
  | '-'   { MOINS }
  | '/'   {  DIVISION }
  | '='   {  EGAL }
  | "!="  { INEGAL}
  | '<'   {  INF }
  | '>'   {  SUP }
  | "<="   {  INFEGAL }
  | ">="   {  SUPEGAL }
  | "||"  {OR}
  | "&&"  { AND }
  | '('   {  PAR_O }
  | ')'   {  PAR_F }
  | ';'   {  SEMI }
  | '{'   {  ACC_O }
  | '}'   {  ACC_F }
  | ','   {  VIRG }
  | _ as c
      { failwith
          (Printf.sprintf
             "invalid character: %c" c) }
  | eof    { FIN }

and comment = parse
  | "*/"
      { () }
  | "/*"
      { comment lexbuf; comment lexbuf }
  | '\n'
      { new_line lexbuf; comment lexbuf }
  | _
      { comment lexbuf }
  | eof
      { failwith "unterminated comment" }

and comment_line = parse
  | '\n'
      {new_line lexbuf; ()}
  | _
      {comment_line lexbuf }
