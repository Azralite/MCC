open Mml
open Printf

let affiche_type t =
  match t with
  | Int -> printf "Int"
  | Bool -> printf "Bool"
  | Void -> printf "Void"


let rec affiche_param p =
  match p with
  | [] -> printf "\n"
  | hd :: tl -> affiche_type (snd hd); printf " %s " (fst hd); affiche_param tl

let print_space i =
  let rec p_space j res =
    if j > 0 then p_space (j-1) (res^" ") else res
in p_space i ""


(* let rec print_expr expr =
  match expr with
  | Cst n -> printf " Cst %d " n
  | Add (e1, e2) -> printf "Add("; print_expr e1; printf "," ; print_expr e2; printf ")"
  | Mul (e1, e2) -> printf "Mul("; print_expr e1; printf "," ; print_expr e2; printf ")"
  | Lt (e1, e2) -> printf "Lt("; print_expr e1; printf "," ; print_expr e2; printf ")"
  | Get s -> printf "Get %s" s
   | Call(s, el) -> printf "Call (%s, (" s; print_expr_list el *)

 let rec print_expr expr i=
   match expr with
   | Cst n -> sprintf "Cst %d \n" n
   | Add (e1, e2) -> sprintf "Add(expr, expr)\n"^print_space (i+4) ^print_expr e1 (i+4) ^ print_space (i+10) ^ print_expr e2 (i+10)
   | Mul (e1, e2) -> sprintf "Mul(expr, expr)\n"^print_space (i+4) ^print_expr e1 (i+4) ^ print_space (i+10) ^ print_expr e2 (i+10)
   | Lt  (e1, e2) -> sprintf "Lt(expr, expr)\n"^print_space (i+3)^print_expr e1 (i+3) ^ print_space (i+9) ^ print_expr e2 (i+9)
   | Get s -> sprintf "Get %s\n" s
   | Call(s, el) -> sprintf "Call(%s,expr list)\n" s ^ print_space (i+6 + String.length s) ^print_expr_list el (i + 6 + String.length s)

and print_expr_list el i =
    match el with
      | [] -> sprintf ""
      | hd :: [] -> print_expr hd i ^ ""
      | hd::tl -> print_expr hd i ^ sprintf ", " ^ print_expr_list tl i

(* let rec print_instr i =
  match i with
  | Putchar e -> printf "Printchar ("; print_expr e; printf ")\n"
  | Set (s,e) -> printf "Set(%s," s; print_expr e; printf ")\n"
  | If(e,s1,s2) -> printf "If(" ; print_expr e;printf ","; print_seq s1; printf ","; print_seq s2; printf ")\n"
  | While(e,s) -> printf "While(" ; print_expr e;printf ","; print_seq s; printf ")\n"
  | Return e -> printf "Return("; print_expr e; printf ")\n"
   | Expr e -> printf "Expr("; print_expr e; printf ")\n" *)



let rec print_instr ins i =
    match ins with
      | Putchar e -> sprintf "Printchar(expr)\n" ^ print_space (10+i) ^ print_expr e (10+i)
      | Set (s,e) -> sprintf "Set(%s, expr)\n" s ^ print_space (4 + String.length s + i) ^ print_expr e (4+i)
      | If(e,s1,s2) -> sprintf "If(expr, seq, seq)\n" ^ print_space (3+i) ^ print_expr e (3+i) ^ print_space (9+i) ^ print_seq s1 (i+9) ^ print_space (14+i) ^ print_seq s2 (i+14)
      | While(e,s) -> sprintf "While(expr, seq)\n" ^ print_space (6+i) ^ print_expr e (6+i)
      | Return e -> sprintf "Return(expr)\n" ^ print_space (7+i) ^print_expr e (7+i)
      | Expr e -> sprintf "Expr(expr)\n" ^ print_space (5+i) ^ print_expr e (5+i)

and print_seq seq  i =
  match seq with
  | [] -> sprintf ""
  | hd::tl -> print_instr hd i ^ print_seq tl i





let print_fun fu =
  printf "Nom : %s \n" fu.name;
  printf "Liste de parametre : "; affiche_param fu.params;
  printf "Return : "; affiche_type fu.return; printf "\n";
  printf "Locals : "; affiche_param fu.locals;
  printf "Code : \n   " ; printf "%s" (print_seq fu.code 3)


let affiche_fun prog =
  printf "\n";
  let rec af_fun li =
    match li with
    | [] -> printf "\n"
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
