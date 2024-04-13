%{

#include <stdio.h>
#include "parser.tab.h"


%}


%%

"const" { return CONST; }
"var"   { return VAR; }
"procedure" { return PROCEDURE; }
"start" { return START; }
"finish"   { return FINISH; }
"if"    { return IF; }
"while" { return WHILE; }
"for"   { return FOR; }
"break" { return BREAK; }
"returns" { return RETURN; }
"read"  { return READ; }
"write" { return WRITE; }
"writeline" { return WRITELINE; }
"odd"   { return ODD; }
"then"  { return THEN; }
"to"    { return TO; }
"do"    { return DO; }
"="     { return EQ; }
"<>"    { return NE; }
"<"     { return LT; }
">"     { return GT; }
"<="    { return LE; }
">="    { return GE; }
":="    { return ASSIGN; }
"+"     { return ADD; }
"-"     { return SUB; }
"%"     { return MOD; }
"*"     { return MUL; }
"/"     { return DIV; }
"call"   { return CALL; }


"." 	{ return DOT; }
";"  	{ return SEMICOLON; }
","     { return COMMA; }
"("      { return LPAR; }
")"      { return RPAR; }
"{"      { return LCURLY;}
"}"      {return RCURLY; }

[0-9]+  { yylval.sval = strdup(yytext); return NUMBER; }
[a-z]+  { yylval.sval = strdup(yytext); return IDENT; }
[ \t\n]   {} 
%%



