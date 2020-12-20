%{
  open Ast



  let test = { globals = []; functions = [] }

  let h = Hashtbl.create 42


let fun_declaration id ty args =
  let tmp = Hashtbl.create 42 in
  tmp = Hashtbl.copy h


%}

%token <int> CST
%token <string> IDENT
%token <Ast.typ> TYPE
%token PRINT
%token IF ELSE WHILE
%token RETURN
%token SEMI VIRG
%token ACC_O ACC_F
%token PLUS ETOILE MOINS DIVISION
%token EGAL INF SUP INFEGAL SUPEGAL INEGAL
%token PAR_O PAR_F
%token FIN
%token OR AND

(*Règle de présedence pris du cours de logique*)
%left AND OR
%left INF SUP EGAL SUPEGAL INFEGAL INEGAL
%left PLUS MOINS
%left ETOILE DIVISION

%start prog
%type <Ast.prog> prog
%type <Ast.expr> expr

%%
(* A program is made of functions and globals variables and finish with EOF token (FIN) *)
prog:
| v = var_decl p=prog
    {(ajoute_glob p v) }
| f = fun_decl p=prog
    { (ajoute_fun p f) }
| FIN { test }
| error
    { let pos = $startpos in
      let message = Printf.sprintf
        "échec à la Ligne: %d, caractere : %d"
        pos.pos_lnum
        (pos.pos_cnum - pos.pos_bol)
      in
      failwith message }
;

(* A variable is made with a type an id and we can asign it a value and end with a semicolon*)
var_decl:
| t=TYPE i=IDENT EGAL e=expr SEMI
    {  if expr_type e = t
      then
        begin Hashtbl.add varTable i t; (i,t) end
      else failwith "erreur wrong type" }
| t=TYPE i=IDENT SEMI
    { (Hashtbl.add varTable i t ;(i,t)) }
;

(* A function is made with a type an id opening parenthese some parameters closing parenthesis and all the code is between two curly brakets *)
fun_decl:
| t=TYPE i=IDENT PAR_O args=param PAR_F ACC_O co=list(instr) ACC_F
    {(Hashtbl.add funTable i t; {name = i; params = args; return = t; locals = get_local args test.globals; code = co} ) }
;


(* instr represent what can be in a function*)
instr:
(* we can retrun an expr*)
| RETURN e= expr SEMI
  {Return e}
(* IF ELSE instr *)
| IF PAR_O c=expr PAR_F ACC_O e1=list(instr) ACC_F ELSE ACC_O  e2=list(instr) ACC_F
    { if expr_type c = Bool then If(c, e1, e2) else failwith "If condition not respected"   }
(* WHILE instr *)
| WHILE PAR_O c=expr PAR_F ACC_O e=list(instr) ACC_F
  { if expr_type c = Bool then While(c, e) else failwith "While condition not respected" }
(* Print an expr*)
| PRINT PAR_O e=expr PAR_F SEMI
    {Putchar e}
(* Set an variable with an value (from an expr)*)
| i=IDENT EGAL e=expr SEMI
  { let a = Get(i) in if expr_type a = (expr_type e) then (set_var i e h; Set(i,e)) else failwith "Variable inconnue" }
(* Manque la déclaration d'une nouvelle variable local*)

;

(*expr_simple is made of cst var and expr between parenthesis  *)
expr_simple:
| n=CST   { Cst n }
| x=IDENT   { Get x }
| PAR_O e=expr PAR_F   { e }
;

expr:
| e=expr_simple
    { e }
| e1= expr op = binop e2=expr
    {Binop(op,e1,e2)}
| i=IDENT PAR_O args=param2 PAR_F
  { Call(i, args) }


(* param2 represent the parameters when we call a function (no type)*)
param2:
| { [] }
| e=expr { [e] }
| e=expr VIRG p=param2 { e::p }

(* param represent the parameters when we declare a function (with type)*)
param:
| { [] }
| t = TYPE i = IDENT
  { [(i,t)] }
| t = TYPE i = IDENT VIRG p = param
  { (i,t)::p }
;


(*binop can be use later in order to simplify expr*)

%inline binop:
| PLUS    { Add }
| MOINS   { Sub }
| ETOILE  { Mul }
| DIVISION { Div }
| EGAL    { Eq }
| INEGAL  { Neq }
| INF     { Lt }
| INFEGAL { Lte }
| SUP     { Gt }
| SUPEGAL { Gte }
| AND      { And }
| OR      { Or }
;
