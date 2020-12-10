
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VIRG
    | TYPE of (
# 8 "parser.mly"
       (Ast.typ)
# 13 "parser.ml"
  )
    | SEMI
    | RETURN
    | PRINT
    | PLUS
    | PAR_O
    | PAR_F
    | INF
    | IF
    | IDENT of (
# 7 "parser.mly"
       (string)
# 26 "parser.ml"
  )
    | FIN
    | ETOILE
    | ELSE
    | EGAL
    | CST of (
# 6 "parser.mly"
       (int)
# 35 "parser.ml"
  )
    | ACC_O
    | ACC_F
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState71
  | MenhirState69
  | MenhirState65
  | MenhirState59
  | MenhirState56
  | MenhirState50
  | MenhirState48
  | MenhirState45
  | MenhirState40
  | MenhirState36
  | MenhirState35
  | MenhirState29
  | MenhirState27
  | MenhirState25
  | MenhirState23
  | MenhirState17
  | MenhirState15
  | MenhirState14
  | MenhirState12
  | MenhirState8
  | MenhirState5
  | MenhirState0

# 1 "parser.mly"
  
  open Ast


# 83 "parser.ml"

let rec _menhir_goto_list_instr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_instr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv245 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 94 "parser.ml"
        )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ACC_F ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv241 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 104 "parser.ml"
            )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ELSE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv237 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 114 "parser.ml"
                )))) * _menhir_state * 'tv_list_instr_)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ACC_O ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv233 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 124 "parser.ml"
                    )))) * _menhir_state * 'tv_list_instr_))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | IDENT _v ->
                        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
                    | IF ->
                        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                    | PRINT ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                    | RETURN ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                    | WHILE ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                    | ACC_F ->
                        _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv234)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv235 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 152 "parser.ml"
                    )))) * _menhir_state * 'tv_list_instr_))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv239 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 163 "parser.ml"
                )))) * _menhir_state * 'tv_list_instr_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv243 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 174 "parser.ml"
            )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv253 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 183 "parser.ml"
        )))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ACC_F ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv249 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 193 "parser.ml"
            )))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv247 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 200 "parser.ml"
            )))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (c : (
# 25 "parser.mly"
      (Ast.expr)
# 205 "parser.ml"
            ))), _, (e1 : 'tv_list_instr_)), _, (e2 : 'tv_list_instr_)) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _8 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_instr = 
# 67 "parser.mly"
    ( If(c, e1, e2) )
# 218 "parser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv251 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 228 "parser.ml"
            )))) * _menhir_state * 'tv_list_instr_)))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state * 'tv_instr) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv255 * _menhir_state * 'tv_instr) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_instr)), _, (xs : 'tv_list_instr_)) = _menhir_stack in
        let _v : 'tv_list_instr_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 241 "parser.ml"
         in
        _menhir_goto_list_instr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)) : 'freshtv258)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv265 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 249 "parser.ml"
        )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ACC_F ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv261 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 259 "parser.ml"
            )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv259 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 266 "parser.ml"
            )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (c : (
# 25 "parser.mly"
      (Ast.expr)
# 271 "parser.ml"
            ))), _, (e : 'tv_list_instr_)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_instr = 
# 70 "parser.mly"
  ( While(c, e) )
# 281 "parser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv263 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 291 "parser.ml"
            )))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv277 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 300 "parser.ml"
        )) * (
# 7 "parser.mly"
       (string)
# 304 "parser.ml"
        ))) * _menhir_state * 'tv_param))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ACC_F ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv273 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 314 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 318 "parser.ml"
            ))) * _menhir_state * 'tv_param))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv271 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 325 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 329 "parser.ml"
            ))) * _menhir_state * 'tv_param))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s, (t : (
# 8 "parser.mly"
       (Ast.typ)
# 334 "parser.ml"
            ))), (i : (
# 7 "parser.mly"
       (string)
# 338 "parser.ml"
            ))), _, (args : 'tv_param)), _, (co : 'tv_list_instr_)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _v : 'tv_fun_decl = 
# 56 "parser.mly"
    ( {name = i; params = args; return = t; locals = get_local args test.globals; code = co} )
# 347 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv269) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_fun_decl) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_fun_decl) = Obj.magic _menhir_stack in
            ((if _menhir_env._menhir_error then
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71
            else
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FIN ->
                  _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState71
              | TYPE _v ->
                  _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
              | _ ->
                  (assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)) : 'freshtv268)) : 'freshtv270)) : 'freshtv272)) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv275 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 376 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 380 "parser.ml"
            ))) * _menhir_state * 'tv_param))) * _menhir_state * 'tv_list_instr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)
    | _ ->
        _menhir_fail ()

and _menhir_goto_instr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_instr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | IF ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | PRINT ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | RETURN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | WHILE ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | ACC_F ->
        _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv232)

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 415 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | PAR_O ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 435 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | PAR_O ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run29 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 455 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | PAR_O ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_reduce15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_instr_ = 
# 211 "<standard.mly>"
    ( [] )
# 477 "parser.ml"
     in
    _menhir_goto_list_instr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PAR_O ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv227 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | IDENT _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | PAR_O ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv228)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | PAR_O ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PAR_O ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | IDENT _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | PAR_O ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv224)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PAR_O ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | IDENT _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | PAR_O ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv220)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
       (string)
# 591 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EGAL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 603 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | IDENT _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | PAR_O ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv216)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 625 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)

and _menhir_goto_param2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_param2 -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv209 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 639 "parser.ml"
        ))) * _menhir_state * 'tv_param2) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PAR_F ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv205 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 649 "parser.ml"
            ))) * _menhir_state * 'tv_param2) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv203 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 656 "parser.ml"
            ))) * _menhir_state * 'tv_param2) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (i : (
# 7 "parser.mly"
       (string)
# 661 "parser.ml"
            ))), _, (args : 'tv_param2)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 25 "parser.mly"
      (Ast.expr)
# 668 "parser.ml"
            ) = 
# 97 "parser.mly"
  ( Call(i, args) )
# 672 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)) : 'freshtv206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv207 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 682 "parser.ml"
            ))) * _menhir_state * 'tv_param2) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)) : 'freshtv210)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 691 "parser.ml"
        ))) * _menhir_state * 'tv_param2) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv211 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 697 "parser.ml"
        ))) * _menhir_state * 'tv_param2) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e : (
# 25 "parser.mly"
      (Ast.expr)
# 702 "parser.ml"
        ))), _, (p : 'tv_param2)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_param2 = 
# 105 "parser.mly"
                       ( e::p )
# 708 "parser.ml"
         in
        _menhir_goto_param2 _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)) : 'freshtv214)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
      (Ast.expr)
# 717 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState23 | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 727 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ETOILE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | INF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | VIRG ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 743 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | IDENT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | PAR_O ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | PAR_F ->
                _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv116)
        | PAR_F ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 765 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : (
# 25 "parser.mly"
      (Ast.expr)
# 770 "parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_param2 = 
# 104 "parser.mly"
         ( [e] )
# 775 "parser.ml"
             in
            _menhir_goto_param2 _menhir_env _menhir_stack _menhir_s _v) : 'freshtv118)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 785 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)) : 'freshtv122)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 794 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 798 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ETOILE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | INF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PAR_F | PLUS | SEMI | VIRG ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv123 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 812 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 816 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 25 "parser.mly"
      (Ast.expr)
# 821 "parser.ml"
            ))), _, (e2 : (
# 25 "parser.mly"
      (Ast.expr)
# 825 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 25 "parser.mly"
      (Ast.expr)
# 831 "parser.ml"
            ) = 
# 91 "parser.mly"
    ( Add(e1, e2) )
# 835 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv125 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 845 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 849 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)) : 'freshtv128)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 858 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 862 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ETOILE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PAR_F | PLUS | SEMI | VIRG ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 874 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 878 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 25 "parser.mly"
      (Ast.expr)
# 883 "parser.ml"
            ))), _, (e2 : (
# 25 "parser.mly"
      (Ast.expr)
# 887 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 25 "parser.mly"
      (Ast.expr)
# 893 "parser.ml"
            ) = 
# 95 "parser.mly"
    ( Lt(e1, e2) )
# 897 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv131 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 907 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 911 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 920 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 924 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 930 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 934 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : (
# 25 "parser.mly"
      (Ast.expr)
# 939 "parser.ml"
        ))), _, (e2 : (
# 25 "parser.mly"
      (Ast.expr)
# 943 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 25 "parser.mly"
      (Ast.expr)
# 949 "parser.ml"
        ) = 
# 93 "parser.mly"
    ( Mul(e1, e2) )
# 953 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 961 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ETOILE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | INF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PAR_F ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv141 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 975 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv139 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 982 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : (
# 25 "parser.mly"
      (Ast.expr)
# 987 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr_simple = 
# 83 "parser.mly"
                       ( e )
# 994 "parser.ml"
             in
            _menhir_goto_expr_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)) : 'freshtv142)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv143 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1006 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)) : 'freshtv146)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1015 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ETOILE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | INF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PAR_F ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv151 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1029 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ACC_O ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv147 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1039 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
                | IF ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | PRINT ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | RETURN ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | WHILE ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | ACC_F ->
                    _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv148)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv149 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1067 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)) : 'freshtv152)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv153 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1080 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)) : 'freshtv156)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1089 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ETOILE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | INF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1105 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv157 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1112 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : (
# 25 "parser.mly"
      (Ast.expr)
# 1117 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_instr = 
# 64 "parser.mly"
  (Return e)
# 1124 "parser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)) : 'freshtv160)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1134 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)) : 'freshtv164)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1143 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ETOILE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | INF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PAR_F ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv171 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1157 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMI ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv167 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1167 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv165 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1174 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (e : (
# 25 "parser.mly"
      (Ast.expr)
# 1179 "parser.ml"
                ))) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_instr = 
# 73 "parser.mly"
    (Putchar e)
# 1188 "parser.ml"
                 in
                _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)) : 'freshtv168)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv169 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1198 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)) : 'freshtv172)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1211 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv185 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1220 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ETOILE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | INF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PAR_F ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv181 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1234 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ACC_O ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv177 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1244 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
                | IF ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState48
                | PRINT ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState48
                | RETURN ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48
                | WHILE ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState48
                | ACC_F ->
                    _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState48
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv178)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv179 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1272 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)) : 'freshtv182)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv183 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1285 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv193 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 1294 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1298 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ETOILE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | INF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv189 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 1314 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1318 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv187 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 1325 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1329 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (i : (
# 7 "parser.mly"
       (string)
# 1334 "parser.ml"
            ))), _, (e : (
# 25 "parser.mly"
      (Ast.expr)
# 1338 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_instr = 
# 76 "parser.mly"
  ( Set (i, e) )
# 1345 "parser.ml"
             in
            _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)) : 'freshtv190)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv191 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 1355 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1359 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)) : 'freshtv194)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv201 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1368 "parser.ml"
        )) * (
# 7 "parser.mly"
       (string)
# 1372 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1376 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ETOILE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | INF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv197 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1392 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 1396 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1400 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv195 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1407 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 1411 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1415 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t : (
# 8 "parser.mly"
       (Ast.typ)
# 1420 "parser.ml"
            ))), (i : (
# 7 "parser.mly"
       (string)
# 1424 "parser.ml"
            ))), _, (e : (
# 25 "parser.mly"
      (Ast.expr)
# 1428 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _v : 'tv_var_decl = 
# 48 "parser.mly"
    ( match t with |Int ->(i,t,42) | _ -> failwith "eval of srting dont work")
# 1435 "parser.ml"
             in
            _menhir_goto_var_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)) : 'freshtv198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv199 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1445 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 1449 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 1453 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)
    | _ ->
        _menhir_fail ()

and _menhir_goto_param : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_param -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv103 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1469 "parser.ml"
        )) * (
# 7 "parser.mly"
       (string)
# 1473 "parser.ml"
        ))) * _menhir_state * 'tv_param) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv101 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1479 "parser.ml"
        )) * (
# 7 "parser.mly"
       (string)
# 1483 "parser.ml"
        ))) * _menhir_state * 'tv_param) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (t : (
# 8 "parser.mly"
       (Ast.typ)
# 1488 "parser.ml"
        ))), (i : (
# 7 "parser.mly"
       (string)
# 1492 "parser.ml"
        ))), _, (p : 'tv_param)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_param = 
# 113 "parser.mly"
  ( (i,t,0)::p )
# 1498 "parser.ml"
         in
        _menhir_goto_param _menhir_env _menhir_stack _menhir_s _v) : 'freshtv102)) : 'freshtv104)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv113 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1506 "parser.ml"
        )) * (
# 7 "parser.mly"
       (string)
# 1510 "parser.ml"
        ))) * _menhir_state * 'tv_param) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PAR_F ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv109 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1520 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 1524 "parser.ml"
            ))) * _menhir_state * 'tv_param) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ACC_O ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv105 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1534 "parser.ml"
                )) * (
# 7 "parser.mly"
       (string)
# 1538 "parser.ml"
                ))) * _menhir_state * 'tv_param)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
                | IF ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | PRINT ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | RETURN ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | WHILE ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | ACC_F ->
                    _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv106)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv107 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1566 "parser.ml"
                )) * (
# 7 "parser.mly"
       (string)
# 1570 "parser.ml"
                ))) * _menhir_state * 'tv_param)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)) : 'freshtv110)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv111 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1581 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 1585 "parser.ml"
            ))) * _menhir_state * 'tv_param) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)
    | _ ->
        _menhir_fail ()

and _menhir_reduce20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_param2 = 
# 103 "parser.mly"
  ( [] )
# 1597 "parser.ml"
     in
    _menhir_goto_param2 _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr_simple : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr_simple -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv99) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_expr_simple) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv97) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : 'tv_expr_simple) : 'tv_expr_simple) = _v in
    ((let _v : (
# 25 "parser.mly"
      (Ast.expr)
# 1614 "parser.ml"
    ) = 
# 89 "parser.mly"
    ( e )
# 1618 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv98)) : 'freshtv100)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv95) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _1 = () in
    let _v : (
# 24 "parser.mly"
      (Ast.prog)
# 1637 "parser.ml"
    ) = let _startpos = _startpos__1_ in
    
# 36 "parser.mly"
    ( let pos = _startpos in
      let message = Printf.sprintf
        "échec à la Ligne: %d, caractere : %d"
        pos.pos_lnum
        (pos.pos_cnum - pos.pos_bol)
      in
      failwith message )
# 1648 "parser.ml"
     in
    _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv96)

and _menhir_goto_var_decl : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_var_decl -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv93 * _menhir_state * 'tv_var_decl) = Obj.magic _menhir_stack in
    ((if _menhir_env._menhir_error then
      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69
    else
      let _tok = _menhir_env._menhir_token in
      match _tok with
      | FIN ->
          _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState69
      | TYPE _v ->
          _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
      | _ ->
          (assert (not _menhir_env._menhir_error);
          _menhir_env._menhir_error <- true;
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69)) : 'freshtv94)

and _menhir_reduce17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_param = 
# 109 "parser.mly"
  ( [] )
# 1676 "parser.ml"
     in
    _menhir_goto_param _menhir_env _menhir_stack _menhir_s _v

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (Ast.typ)
# 1683 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1695 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 7 "parser.mly"
       (string)
# 1700 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VIRG ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv83 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1711 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 1715 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TYPE _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
            | PAR_F ->
                _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv84)
        | PAR_F ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv85 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1733 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 1737 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t : (
# 8 "parser.mly"
       (Ast.typ)
# 1742 "parser.ml"
            ))), (i : (
# 7 "parser.mly"
       (string)
# 1746 "parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_param = 
# 111 "parser.mly"
  ( [(i,t,0)] )
# 1751 "parser.ml"
             in
            _menhir_goto_param _menhir_env _menhir_stack _menhir_s _v) : 'freshtv86)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv87 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1761 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 1765 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)) : 'freshtv90)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1776 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | PAR_O ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
       (string)
# 1801 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PAR_O ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 1813 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | IDENT _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | PAR_O ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | PAR_F ->
            _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv78)
    | ETOILE | INF | PAR_F | PLUS | SEMI | VIRG ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 1835 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 7 "parser.mly"
       (string)
# 1840 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_expr_simple = 
# 82 "parser.mly"
            ( Get x )
# 1845 "parser.ml"
         in
        _menhir_goto_expr_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv80)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 1855 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (int)
# 1863 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv75) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 6 "parser.mly"
       (int)
# 1873 "parser.ml"
    )) : (
# 6 "parser.mly"
       (int)
# 1877 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr_simple = 
# 81 "parser.mly"
          ( Cst n )
# 1882 "parser.ml"
     in
    _menhir_goto_expr_simple _menhir_env _menhir_stack _menhir_s _v) : 'freshtv76)

and _menhir_goto_prog : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 24 "parser.mly"
      (Ast.prog)
# 1889 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state * 'tv_var_decl) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 24 "parser.mly"
      (Ast.prog)
# 1900 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * 'tv_var_decl) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((p : (
# 24 "parser.mly"
      (Ast.prog)
# 1908 "parser.ml"
        )) : (
# 24 "parser.mly"
      (Ast.prog)
# 1912 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (v : 'tv_var_decl)) = _menhir_stack in
        let _v : (
# 24 "parser.mly"
      (Ast.prog)
# 1918 "parser.ml"
        ) = 
# 31 "parser.mly"
    ((ajoute_glob p v) )
# 1922 "parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv64)) : 'freshtv66)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state * 'tv_fun_decl) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 24 "parser.mly"
      (Ast.prog)
# 1932 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_fun_decl) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((p : (
# 24 "parser.mly"
      (Ast.prog)
# 1940 "parser.ml"
        )) : (
# 24 "parser.mly"
      (Ast.prog)
# 1944 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (f : 'tv_fun_decl)) = _menhir_stack in
        let _v : (
# 24 "parser.mly"
      (Ast.prog)
# 1950 "parser.ml"
        ) = 
# 33 "parser.mly"
    ( (ajoute_fun p f) )
# 1954 "parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv68)) : 'freshtv70)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 24 "parser.mly"
      (Ast.prog)
# 1964 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 24 "parser.mly"
      (Ast.prog)
# 1972 "parser.ml"
        )) : (
# 24 "parser.mly"
      (Ast.prog)
# 1976 "parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv72)) : 'freshtv74)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * 'tv_fun_decl) = Obj.magic _menhir_stack in
        (_menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p : 'freshtv20)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * 'tv_var_decl) = Obj.magic _menhir_stack in
        (_menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p : 'freshtv22)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 1998 "parser.ml"
        )) * (
# 7 "parser.mly"
       (string)
# 2002 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv27 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 2016 "parser.ml"
        )))) * _menhir_state * 'tv_list_instr_)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 2025 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv31 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 2034 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv39 * _menhir_state)) * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 2058 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 2067 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 2076 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 2085 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * (
# 25 "parser.mly"
      (Ast.expr)
# 2094 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * (
# 7 "parser.mly"
       (string)
# 2103 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv55 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 2122 "parser.ml"
        )) * (
# 7 "parser.mly"
       (string)
# 2126 "parser.ml"
        ))) * _menhir_state * 'tv_param))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 2135 "parser.ml"
        )) * (
# 7 "parser.mly"
       (string)
# 2139 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 2148 "parser.ml"
        )) * (
# 7 "parser.mly"
       (string)
# 2152 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61) = Obj.magic _menhir_stack in
        (_menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p : 'freshtv62)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (Ast.typ)
# 2164 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 2176 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 7 "parser.mly"
       (string)
# 2181 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EGAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv5 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 2192 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 2196 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | IDENT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | PAR_O ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv6)
        | PAR_O ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv7 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 2216 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 2220 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TYPE _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | PAR_F ->
                _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv8)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv11 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 2238 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 2242 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 2249 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 2253 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t : (
# 8 "parser.mly"
       (Ast.typ)
# 2258 "parser.ml"
            ))), (i : (
# 7 "parser.mly"
       (string)
# 2262 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _v : 'tv_var_decl = 
# 50 "parser.mly"
    ( (i,t,0) )
# 2268 "parser.ml"
             in
            _menhir_goto_var_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)) : 'freshtv12)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv13 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 2278 "parser.ml"
            )) * (
# 7 "parser.mly"
       (string)
# 2282 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)) : 'freshtv16)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 8 "parser.mly"
       (Ast.typ)
# 2293 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 24 "parser.mly"
      (Ast.prog)
# 2307 "parser.ml"
    ) = 
# 34 "parser.mly"
      ( {globals = []; functions = []} )
# 2311 "parser.ml"
     in
    _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 24 "parser.mly"
      (Ast.prog)
# 2330 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FIN ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TYPE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 2361 "parser.ml"
