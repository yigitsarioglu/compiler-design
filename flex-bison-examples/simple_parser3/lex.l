%{

#include <stdio.h>
#include "parser.tab.h"


%}


%%
"func"  { return FUNC; }
"print"  { return PRINT; }
";"  	{ return SEMICOLON; }
"("      { return LPAR; }
")"      { return RPAR; }
"{"      { return LCURLY;}
"}"      {return RCURLY; }

[0-9]+  { yylval.sval = strdup(yytext); return NUMBER; }
[a-z]+  { yylval.sval = strdup(yytext); return IDENT; }
[ \t\n]   {} 
%%



