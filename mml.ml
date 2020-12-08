exception TypeError

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
  params: (string * typ) list;
  return: typ;
  locals: (string * typ) list;
  code:   seq;
}

type prog = {
    globals:   (string * typ) list;
    functions: fun_def list;
  }




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
    | _, _ -> false

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
