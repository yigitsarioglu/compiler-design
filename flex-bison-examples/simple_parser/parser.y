%{

#include <stdio.h>

int yylex();
void yyerror(const char *s);

%}



%token IDENT
%token NUMBER
%start program



%%
program: IDENT NUMBER IDENT NUMBER {printf("program -> IDENT NUMBER IDENT NUMBER\n"); }
%%


int main(void) {
	yyparse();
}

void yyerror(const char *s){
	printf("Error: %s\n",s);
}


