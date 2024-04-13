%{ // tanımlamam yapılan ilk bölüm
    #include <stdio.h>
    int yylex(void);
    void yyerror(char *);
%}

%token INTEGER

%% // BNF yapısındaki ikinci bölüm

program:
        program expr 'n'         { printf("%dn", $2); }
        | 
        ;

expr:
        INTEGER
        | expr '+' expr           { $$ = $1 + $3; }
        | expr '-' expr           { $$ = $1 - $3; }
        ;

%%
// fonksiyon içeriklerinin bulunduğu son bölüm
void yyerror(char *s) {
    fprintf(stderr, "%sn", s);
}

int main(void) {
    yyparse();
    return 0;
}
