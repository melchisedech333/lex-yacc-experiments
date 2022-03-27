%{
    #include <stdio.h>
    #include <string.h>
    #include "y.tab.h"

    void yyerror (char *c);  
%}

CHARS           [a-zA-Z0-9]+
STRING          \"{CHARS}\"
NUMBER          [0-9]+
IDENTIFIER      {CHARS}
SPACETABS       [ \t\n]

%%

var             {
    return DEFINITION;
}

{STRING}        {
    yylval.value = strdup(yytext);
    return STRING;
}

{NUMBER}        {
    yylval.value = strdup(yytext);
    return INTEGER;
}

{IDENTIFIER}    {
    yylval.value = strdup(yytext);
    return VARIABLE;
}

=               { return ATTR; }
;               { return END;  }
{SPACETABS}     {  }

%%

int yywrap () {
    return 1;
}


