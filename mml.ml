type typ =
    | Int
    | Bool
    | Void


type expr =
  | Cst  of int
  | Var of string
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
