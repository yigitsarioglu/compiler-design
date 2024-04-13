all:
	bison -d parser.y
	flex lex.l
	gcc lex.yy.c parser.tab.c -o parser -lfl

