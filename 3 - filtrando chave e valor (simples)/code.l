%{
    #include <stdio.h>
    #include <string.h>
    #include "y.tab.h"

    void yyerror (char *c);  
%}

CHARS           [a-zA-Z0-9]+
STRING          \"{CHARS}\"
INTEGER         [0-9]+
SPACETABS       [ \t\n]

%%

\{              { return OPEN;  }
\}              { return CLOSE; }
:               { return ATTR;  }

{STRING}        {
    yylval.value = strdup(yytext);
    return JSTRING;
}

{INTEGER} {
    yylval.value = strdup(yytext);
    return JINTEGER;
}

, {
    return SEPARATOR;
}

{SPACETABS}    {  }

%%

int yywrap () {
    return 1;
}


