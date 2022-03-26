%{
    #include <stdio.h>
    #include <string.h>
    #include "y.tab.h"

    void yyerror (char *c);  
%}

DIGIT                       [0-9]
INTEGER_P                   {DIGIT}+
INTEGER_N                   -{INTEGER_P}
FLOAT_P                     {INTEGER_P}[.]{INTEGER_P}
FLOAT_N                     -{FLOAT_P}
IDENTIFIER_A                [A-Za-z_]
IDENTIFIER_B                {IDENTIFIER_A}[A-Za-z0-9_]+

%%

{INTEGER_P} {
    yylval.variable.integer = atoi(yytext);
    yylval.variable.type = INTEGER;
    return INTEGER;
}

{INTEGER_N} {
    yylval.variable.integer = atoi(yytext);
    yylval.variable.type = INTEGER;
    return INTEGER;
}

{FLOAT_P} {
    yylval.variable.floating = atof(yytext);
    return FLOAT;
}

{FLOAT_N} {
    yylval.variable.floating = atof(yytext);
    return FLOAT;
}

{IDENTIFIER_A} {
    yylval.variable.identifier = strdup(yytext);
    return IDENTIFIER;
}

{IDENTIFIER_B} {
    yylval.variable.identifier = strdup(yytext);
    return IDENTIFIER;
}

[[:space:]]+ ; /* Ignora todos espaços, tabs e semelhantes. */

. {
    yylval.variable.unknown = strdup(yytext);
    return UNKNOWN;
}

%%

int yywrap () {
    return 1;
}


