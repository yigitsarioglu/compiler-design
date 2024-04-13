A simple add sub calculation parser

Compile using the `Makefile` 

    $ make

or manually on Linux, follow this steps:

    $ bison -d test.y
    $ flex test.l
    $ gcc test.tab.c lex.yy.c -o test -lm
    $ ./test
