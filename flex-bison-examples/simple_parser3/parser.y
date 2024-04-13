/*
bu sekilde dısarıdan dosya vereceğiz
./a.out < add.lang
*/
%{

#include <stdio.h>

int yylex();
void yyerror(const char *s);

%}



%union {

    char *sval;

    int ival;
}


%token <sval> IDENT
%token <sval> NUMBER

%token FUNC
%token LPAR
%token RPAR
%token LCURLY
%token RCURLY
%token PRINT
%token SEMICOLON

%start program



%%
program : functions {printf("program -> functions\n"); }

functions : function functions {printf("functions -> function functions\n"); }
	   | %empty {printf("functions ->empty\n"); }
		
		
function : FUNC IDENT LPAR RPAR LCURLY statements RCURLY {printf("program ->  FUNC IDENT LPAR RPAR LCURLY RCURLY\n"); }		

statements : statement statements  {printf("statements -> statement statements\n"); }
	| %empty {printf("statements ->empty\n"); }

statement: PRINT LPAR variable RPAR SEMICOLON { printf("statement -> PRINT LPAR variable RPAR\n");}

variable : IDENT   {printf("variable ->IDENT %s\n", $1); }
	 | NUMBER  {printf("variable ->NUMBER %s\n", $1); }
	
%%


int main(void) {
	yyparse();
}

void yyerror(const char *s){
	printf("Error: %s\n",s);
}


