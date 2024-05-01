# Cmpe 425 project 1 grammar parser written with flex / bison.

- Grammar for the PL/0 language (https://en.wikipedia.org/wiki/PL/0 ).

## Compilation

Compile using the `Makefile` 

    $ make

or manually on Linux, follow this steps:

    $ bison -d parser.y
    $ flex lex.l
    $ gcc parser.tab.c lex.yy.c -o parser -lm
    $ ./parser

You could give the input file as:

    $ ./parser < basiccode.lang


## Grammar Rules
- Consider the grammar for the PL/0 language (https://en.wikipedia.org/wiki/PL/0 ).

program = block "." ;

block = [ "const" ident "=" number {"," ident "=" number} ";"]
        [ "var" ident {"," ident} ";"]
        { "procedure" ident ";" block ";" } statement ;

statement = [ ident ":=" expression | "call" ident 
              | "?" ident | "!" expression 
              | "begin" statement {";" statement } "end" 
              | "if" condition "then" statement 
              | "while" condition "do" statement ];

condition = "odd" expression |
            expression ("="|"#"|"<"|"<="|">"|">=") expression ;

expression = [ "+"|"-"] term { ("+"|"-") term};

term = factor {("*"|"/") factor};

factor = ident | number | "(" expression ")";
