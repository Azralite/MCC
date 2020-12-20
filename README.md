# MCC (Mini C Compiler)
A menhir/ocamllex complier for a C fragement

This project allow you to compile some of C functionality

### Install

```bash
git clone https://github.com/Azralite/Mini-C_Compiler.git
cd Mini-C_Compiler
make test
```

### How it works

You must change the Makefile in order to aply it on your file.

This project use a lexer and a parser to change a simple .c file into a [AST](https://en.wikipedia.org/wiki/Abstract_syntax_tree)


### TODO

- [x] Add syntax error and type error
- [ ] Improve the Makefile and allow to execute any file.c give as an argument
- [x] Print the AST in an other file
- [ ] Add Interpreter
- [ ] Make it a real comiler (Mini-C -> MIPS)
- [ ] Add functionality :
  - [ ] Return error with real meaning : "Missing semicolon" or "Did you mean '...' "
  - [x] Implement more operator :
    - [x] Minus
    - [x] Division
    - [x] <= , >, >= , &&, || , etc
    - [x] !
  - [ ] struct and union
  - [ ] int list
  - [ ] for loop
  - [ ] if ... then ... without else
  - [ ] Pointers
