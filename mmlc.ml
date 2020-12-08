open Mml

let affiche_type t =
  match t with
  | Int -> Printf.printf "Int"
  | Bool -> Printf.printf "Bool"
  | Void -> Printf.printf "Void"


let rec affiche_param p =
  match p with
  | [] -> Printf.printf "\n"
  | hd :: tl -> affiche_type (snd hd); Printf.printf " %s " (fst hd); affiche_param tl



let rec print_expr expr =
  match expr with
  | Cst n -> Printf.printf " Cst %d " n
  | Add (e1, e2) -> Printf.printf "Add("; print_expr e1; Printf.printf "," ; print_expr e2; Printf.printf ")"
  | Mul (e1, e2) -> Printf.printf "Mul("; print_expr e1; Printf.printf "," ; print_expr e2; Printf.printf ")"
  | Lt (e1, e2) -> Printf.printf "Lt("; print_expr e1; Printf.printf "," ; print_expr e2; Printf.printf ")"
  | Get s -> Printf.printf "Get %s" s
  | Call(s, el) -> Printf.printf "Call (%s, (" s; print_expr_list el

and print_expr_list el =
    match el with
      | [] -> Printf.printf "))"
    | hd::tl -> print_expr hd; Printf.printf ", "; print_expr_list tl

let rec print_instr i =
  match i with
  | Putchar e -> Printf.printf "Printchar ("; print_expr e; Printf.printf ")\n"
  | Set (s,e) -> Printf.printf "Set(%s," s; print_expr e; Printf.printf ")\n"
  | If(e,s1,s2) -> Printf.printf "If(" ; print_expr e;Printf.printf ","; print_seq s1; Printf.printf ","; print_seq s2; Printf.printf ")\n"
  | While(e,s) -> Printf.printf "While(" ; print_expr e;Printf.printf ","; print_seq s; Printf.printf ")\n"
  | Return e -> Printf.printf "Return("; print_expr e; Printf.printf ")\n"
  | Expr e -> Printf.printf "Expr("; print_expr e; Printf.printf ")\n"

and print_seq seq =
  match seq with
  | [] -> Printf.printf "\n"
  | hd::tl -> print_instr hd; print_seq tl





let print_fun fu =
  Printf.printf "Nom : %s \n" fu.name;
  Printf.printf "Liste de parametre : "; affiche_param fu.params;
  Printf.printf "Return : "; affiche_type fu.return; Printf.printf "\n";
  Printf.printf "Locals : "; affiche_param fu.locals;
  Printf.printf "Code : ...\n\t" ; print_seq fu.code


let affiche_fun prog =
  Printf.printf "\n";
  let rec af_fun li =
    match li with
    | [] -> Printf.printf "\n"
    | hd :: tl -> print_fun hd; af_fun tl
in af_fun prog.functions

let () =
  let fichier = Sys.argv.(1) in
  let c = open_in fichier in
  let lexbuf = Lexing.from_channel c in
  let prog = Mmlparser.prog Mmllexer.token lexbuf in
  affiche_fun prog;
  close_in c;
  exit 0
