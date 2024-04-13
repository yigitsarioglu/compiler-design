%{

#include <stdio.h>
#include "parser.tab.h"
%}


%%
"func"  { return FUNC; }
"("      { return LPAR; }
")"      { return RPAR; }
"{"      { return LCURLY;}
"}"      {return RCURLY; }

[0-9]+  {return NUMBER; }
[a-z]+   {return IDENT; }
[ \t\n]   {} 
%%



