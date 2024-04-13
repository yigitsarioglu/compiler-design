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

%token LPAR
%token RPAR
%token LCURLY
%token RCURLY
%token COMMA
%token DOT
%token SEMICOLON
%token VAR
%token PROCEDURE
%token CALL

%token CONST START FINISH IF WHILE FOR BREAK RETURN READ WRITE WRITELINE ODD
%token EQ NE LT GT LE GE ASSIGN ADD SUB MOD MUL DIV THEN DO TO

%left ADD SUB
%left MUL DIV MOD

%start program



%%

program : block DOT { printf("Syntax is correct.\n"); }


block : const_decl var_decl proc_decl statement



const_decl : CONST const_assignment_list SEMICOLON 
           | %empty 


const_assignment_list : IDENT EQ NUMBER
                      | const_assignment_list COMMA IDENT EQ NUMBER

         

var_decl : VAR identifier_list SEMICOLON 
         | %empty 

  

identifier_list : IDENT
                | identifier_list COMMA IDENT

              

proc_decl : PROCEDURE IDENT SEMICOLON block SEMICOLON  
          | %empty 

         

statement : IDENT ASSIGN expression 
          | CALL IDENT
          | START statement_list FINISH
          | IF condition THEN statement
          | WHILE condition DO statement
          | %empty 
          
          

statement_list : statement
               | statement_list SEMICOLON statement

           

condition : ODD expression
	   | expression relation expression

         

relation : EQ | NE | LT | GT | LE | GE     



expression : term
	   | addsuboperator term 
	   | expression addsuboperator term 
	   
	  
	    
	  
term : factor
     | term muldivoperator factor

muldivoperator : MUL  {printf("muldivoperator-> MUL\n"); }
		| DIV {printf("muldivoperator-> DIV\n"); }
		
addsuboperator : ADD   {printf("addsuboperator-> ADD\n"); }
		| SUB  {printf("addsuboperator-> SUB\n"); }

factor : IDENT   {printf("factor ->IDENT %s\n", $1); }
       | NUMBER  {printf("factor ->NUMBER %s\n", $1); }
       | LPAR expression RPAR {printf("factor -> LPAR expression RPAR\n"); }

  
	  
	
	
%%


int main(void) {
	yyparse();
}

void yyerror(const char *s){
	printf("Error: %s\n",s);
}


