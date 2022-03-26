%{
    #include <stdio.h>
    #include <string.h>
    #include "y.tab.h"

    void yyerror (char *c);  
%}

/* Todos outros tokens não especificados. */
OTHERS                      .

/* Ignora todos espaços, tabs e semelhantes. */
SPACE_TABS                  [[:space:]]+

/* Inteiros. */
INTEGER                     [0-9]+

%%

{INTEGER} {
    yylval.token.type    = TOKEN_INTEGER;
    yylval.token.integer = atoi(yytext);
    return TOKEN;
}

{SPACE_TABS} ;

{OTHERS} {
    yylval.token.type    = TOKEN_UNKNOWN;
    yylval.token.unknown = strdup(yytext);
    return TOKEN;
}

%%

int yywrap () {
    return 1;
}


