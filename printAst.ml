open Ast
open Printf

let affiche_type t =
  match t with
  | Int -> sprintf "Int"
  | Bool -> sprintf "Bool"
  | Void -> sprintf "Void"


let rec affiche_param p =
  match p with
  | [] -> sprintf "\n"
  | hd :: tl -> begin
      let (s,t) = hd in
      affiche_type t ^ sprintf " %s \n" s ^  affiche_param tl
    end

let print_space i =
  let rec p_space j res =
    if j > 0 then p_space (j-1) (res^" ") else res
  in p_space i ""



let rec print_expr expr i=
  match expr with
  | Cst n -> sprintf "Cst %d \n" n
  | Binop (bn,e1,e2) -> begin
    match bn with
    | Add  -> sprintf "Add(expr, expr)\n"^print_space (i+4) ^print_expr e1 (i+4) ^ print_space (i+10) ^ print_expr e2 (i+10)
    | Mul  -> sprintf "Mul(expr, expr)\n"^print_space (i+4) ^print_expr e1 (i+4) ^ print_space (i+10) ^ print_expr e2 (i+10)
    | Lt   -> sprintf "Lt(expr, expr)\n"^print_space (i+3)^print_expr e1 (i+3) ^ print_space (i+9) ^ print_expr e2 (i+9)
    | Lte   -> sprintf "Lte(expr, expr)\n"^print_space (i+4)^print_expr e1 (i+4) ^ print_space (i+10) ^ print_expr e2 (i+10)
    | Or-> sprintf "Or(expr, expr)\n"^print_space (i+3) ^print_expr e1 (i+3) ^ print_space (i+9) ^ print_expr e2 (i+9)
    | And-> sprintf "And(expr, expr)\n"^print_space (i+4) ^print_expr e1 (i+4) ^ print_space (i+10) ^ print_expr e2 (i+10)
    | Sub   -> sprintf "Sub(expr, expr)\n"^print_space (i+4) ^print_expr e1 (i+4) ^ print_space (i+10) ^ print_expr e2 (i+10)
    | Div   -> sprintf "Div(expr, expr)\n"^print_space (i+4) ^print_expr e1 (i+4) ^ print_space (i+10) ^ print_expr e2 (i+10)
    | Gt -> sprintf "Gt(expr, expr)\n"^print_space (i+3)^print_expr e1 (i+3) ^ print_space (i+9) ^ print_expr e2 (i+9)
    | Gte -> sprintf "Gte(expr, expr)\n"^print_space (i+4)^print_expr e1 (i+4) ^ print_space (i+10) ^ print_expr e2 (i+10)
    | Eq -> sprintf "Eq(expr, expr)\n"^print_space (i+3)^print_expr e1 (i+3) ^ print_space (i+9) ^ print_expr e2 (i+9)
    | Neq -> sprintf "Neq(expr, expr)\n"^print_space (i+4)^print_expr e1 (i+4) ^ print_space (i+10) ^ print_expr e2 (i+10)
  end
  | Get s -> sprintf "Get %s\n" s
  | Call(s, el) -> sprintf "Call(%s,expr list)\n" s ^ print_space (i+6 + String.length s) ^print_expr_list el (i + 6 + String.length s)

and print_expr_list el i =
  match el with
  | [] -> sprintf ""
  | hd :: [] -> print_expr hd i ^ ""
  | hd::tl -> print_expr hd i ^ sprintf ", " ^ print_expr_list tl i


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
  sprintf "Nom : %s \n" fu.name ^
  sprintf "Liste de parametre : \n" ^ affiche_param fu.params ^
  sprintf "Return : " ^ affiche_type fu.return ^ sprintf "\n" ^
  sprintf "Locals : " ^  affiche_param fu.locals ^
  sprintf "Code : \n   " ^ sprintf "%s" (print_seq fu.code 3)

let print_glob g =
  affiche_param g

let affiche_fun prog file =
  let oc = open_out file in
  fprintf oc "Variables Globales :\n%s\nFonctions :\n\n" (print_glob prog.globals);
  let rec af_fun li =
    match li with
    | [] -> fprintf oc "\n"
    | hd :: tl -> fprintf oc "%s" (print_fun hd);   af_fun tl
  in af_fun prog.functions;
  close_out oc
