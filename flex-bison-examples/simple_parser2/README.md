A small example of a parser written with flex / bison.

Compile using the `Makefile` 

    $ make

or manually on Linux, follow this steps:

    $ bison -d parser.y
    $ flex lex.l
    $ gcc parser.tab.c lex.yy.c -o parser -lm
    $ ./parser

You could give the input file as:

    $ ./parser > add.lang
