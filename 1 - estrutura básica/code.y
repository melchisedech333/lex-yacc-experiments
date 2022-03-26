%{
    #include <stdio.h>
    #include <string.h>

    void yyerror (char *c);
    int yylex (void);
%}

%union
{
	struct {
        int type;
        int integer;
        float floating;
        char *unknown;
        char *identifier;
    } variable;
};

%token INTEGER FLOAT IDENTIFIER UNKNOWN

%%

EXPRESSAO:
    EXPRESSAO EXPRESSAO;
    | INTEGER { printf("-> integer: %d\n", $<variable.integer>$); }
    | FLOAT { printf("-> floating: %lf\n", $<variable.floating>$); }
    | IDENTIFIER { printf("-> identifier: %s\n", $<variable.identifier>$); }
    | UNKNOWN { printf("-> unknown: %s\n", $<variable.unknown>$); }
    ;

%%

void yyerror (char *c) {
    printf("Error: %s\n", c);
}

int main () {
    yyparse();
    return 0;
}


