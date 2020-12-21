open Hashtbl

exception TypeError
exception VarNotFound
exception FunNotFound
exception DivisionParZero
exception ErrorSyntax of string


type typ =
  | Int
  | Bool
  | Void

type binop =
  | Add | Sub | Mul | Div
  | And | Or
  | Lt | Lte
  | Gt | Gte
  | Eq | Neq

type expr =
  | Cst  of int
  | Binop of binop * expr * expr
  | Get  of string
  | Call of string * expr list



type instr =
  | Putchar of expr
  | Set     of string * expr
  | If      of expr * seq * seq
  | While   of expr * seq
  | Return  of expr
  | Expr    of expr
and seq = instr list

type fun_def = {
  name:   string;
  params: (string * typ) list;
  return: typ;
  locals: (string * typ) list;
  code:   seq;
}

type prog = {
  globals:   (string * typ) list;
  functions: fun_def list;
}


let funTable = Hashtbl.create 42
let varGlobalTable = Hashtbl.create 42

let varLocalTable =  Hashtbl.create 42

let _ = Hashtbl.add varLocalTable "a" Int; Hashtbl.clear varLocalTable
let _ = Hashtbl.add varGlobalTable "a" Int; Hashtbl.clear varGlobalTable



let rec expr_type e  =
  match e with
  | Cst _ -> Int
  | Get e -> if Hashtbl.mem varLocalTable e then Hashtbl.find varLocalTable e else
    if Hashtbl.mem varGlobalTable e then Hashtbl.find varGlobalTable e else raise VarNotFound
  | Call(str, _) -> if Hashtbl.mem funTable str then Hashtbl.find funTable str else raise FunNotFound
  | Binop (bn, e1 , e2) -> begin
    match bn with
      | Add
      | Mul
      | Sub
      | Div  ->
        if expr_type e1  = Int
        && expr_type e2  = Int
        then Int
        else raise TypeError
      | Lt
      | Gt
      | Gte
      | Lte ->
        if expr_type e1  = Int
        && expr_type e2  = Int
        then Bool
        else raise TypeError
      | And
      | Or  ->
        if expr_type e1 = Bool
        && expr_type e2 = Bool
        then Bool
        else raise TypeError
      | Eq
      | Neq ->  let t1 = expr_type e1 in
        if expr_type e2 = t1 then Bool
        else raise TypeError

  end


(* Our variables and functions keeper*)
let test = {globals = []; functions = []}

(* Add variables to a prog *)
let ajoute_glob p g =
  {globals = g::p.globals; functions = p.functions}

(* Add function to a prog *)
let ajoute_fun p f =
  {globals = p.globals; functions = f::p.functions }

(* Merge two list into one: use to merge globals var and param into locals var *)
let get_local l1 l2 =
  let rec gl li1 li2 res =
    match li1,li2 with
    | [],[] -> res
    | h1::d1,[] -> gl d1 [] (h1::res)
    | [] , h2::d2 -> gl [] d2 (h2::res)
    | h1::d1 , h2::d2 -> gl d1 d2 (h1::h2::res)
  in gl l1 l2 []


let rec eval expr env =
  match expr with
  | Cst n -> n
  | Binop (bn,e1,e2) -> begin
    match bn with
      | Add -> eval e1 env + eval e2 env
      | Mul -> eval e1 env * eval e2 env
      | Lt  -> if (eval e1 env < eval e2 env) then 1 else 0
      | Lte  -> if (eval e1 env <= eval e2 env) then 1 else 0
      | Gt  -> if (eval e1 env > eval e2 env) then 1 else 0
      | Gte  -> if (eval e1 env >= eval e2 env) then 1 else 0
      | Or -> if (eval e1 env = 1) || (eval e2 env = 1) then 1 else 0
      | And -> if (eval e1 env = 1) && (eval e2 env = 1) then 1 else 0
      | Sub -> eval e1 env - eval e2 env
      | Div -> let tmp = eval e2 env in
        if tmp = 0 then raise DivisionParZero else eval e1 env / eval e2 env (*On peut pas vérifier la division par 0*)
      | Eq -> if eval e1 env = eval e2 env then 1 else 0
      | Neq -> if eval e1 env <> eval e2 env then 1 else 0
  end
  | Get  (s) -> if Hashtbl.mem env s then Hashtbl.find env s else raise VarNotFound
  | Call (s, exprList) -> if Hashtbl.mem env s then Hashtbl.find env s else raise FunNotFound



let set_var i e env = Hashtbl.replace env i e


let param_to_local li =
  let rec ptl l =
    match l with
    | [] -> ()
    | hd::tl -> Hashtbl.add varLocalTable (fst hd) (snd hd); ptl tl
in ptl li

let hashtbl_to_list has =
  let rec htl h res =
    let f = (fun str typ lis -> (str,typ)::lis) in
    Hashtbl.fold f h res
  in htl has []



(*
let rec eval_instr instr env =
  match instr with
  | Putchar (e) -> Printf.printf "0" (*(eval e)*)
  (* | Set (s,e) -> add_var s e env (*TODO : définir une fct qui ajoute une variable aux locals de la fct en cours*) *)
  | If (e,s1,s2) -> if (eval e = 1) then eval_seq s1 env else eval_seq s2 env
  | While   (e,s) -> if (eval e = 1) then eval_seq s env (*TODO : Modifier l'env pour eviter inf loop*)
  | Return  (e) -> eval e env
  | Expr  e -> eval e env *)


(* let rec eval_seq seq env =
   match seq with
   | [] ->
   | hd::tl -> eval_instr ; eval seq env *)
(*
let rec substitution expr var expr2 =
  match expr with
  | Cst n -> Cst n
  | Add  (e1,e2) -> substitution e1 var expr2 + substitution e2 var expr2
  | Mul  (e1,e2) -> substitution e1 var expr2 * substitution e2 var expr2
  | Lt   (e1,e2) -> substitution e1 var expr2 < substitution e2 var expr2
  | Get  (s) -> if s = var
    then Get expr2 else Get s
  | Call (s, exprList) -> if s = var then Call s *)
