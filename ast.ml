open Hashtbl

exception TypeError
exception VarNotFound


(* env is an (string * (type * int)) t used to store variables *)
(* let env = create 42 *)

type typ =
    | Int
    | Bool
    | Void


type expr =
  | Cst  of int
  | Add  of expr * expr
  | Mul  of expr * expr
  | Lt   of expr * expr
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
  params: (string * typ * int) list;
  return: typ;
  locals: (string * typ * int) list;
  code:   seq;
}

type prog = {
    globals:   (string * typ * int) list;
    functions: fun_def list;
  }



(*
let rec expr_type e env =
  match e with
  | Cst _ -> Int
  | Get e -> List.assoc e env.locals
  | Add(e1,e2) ->
      if expr_type e1 env = Int
      && expr_type e2 env = Int
      then Int
      else raise TypeError
  | Mul(e1,e2) ->
      if expr_type e1 env = Int
      && expr_type e2 env = Int
      then Int
      else raise TypeError
  | Lt(e1,e2) ->
      if expr_type e1 env = Int
      && expr_type e2 env = Int
      then Int
      else raise TypeError
  |  Call(str, el) ->
    let ret = env.return in
    let loc = env.locals in
    begin
      if compareParam el loc env then ret else raise TypeError
    end

and compareParam l1 l2 env =
    match l1,l2 with
    | [] , [] -> true
    | hd1::tl1 , hd2::tl2 ->
        if expr_type hd1 env != snd hd2 then
          raise TypeError else compareParam tl1 tl2 env
    | _, _ -> false *)

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


let rec find_env str li =
  match li with
  | [] -> raise Not_found
  | hd::tl -> let (s,t,i) = hd in
    if str = s then i else find_env str tl

let rec eval expr env =
  match expr with
  | Cst n -> n
  | Add  (e1,e2) -> eval e1 env + eval e2 env
  | Mul  (e1,e2) -> eval e1 env * eval e2 env
  | Lt   (e1,e2) -> if (eval e1 env < eval e2 env) then 1 else 0
  | Get  (s) -> find_env s env
  | Call (s, exprList) -> 0 (* TODO : A changer*)

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
