%{
    #include <stdio.h>
    #include <string.h>

    void yyerror (char *c);
    int yylex (void);
%}

%union {
	char *value;
};

%token START VARIABLE TYPE ATTR STRING INTEGER SEPARATOR END

%%

PROGRAM: PROGRAM EXPRESSION
    |
    ;

EXPRESSION: START VARIABLES END
    ;

VARIABLES: DEFINITION
    | DEFINITION SEPARATOR VARIABLES
    ;

DEFINITION: VARIABLE ATTR VALUE {
        printf("var %s -> %s\n", $<value>1, $<value>3);
    }
    | VARIABLE TYPE ATTR VALUE {
        printf("var %s (%s) -> %s\n", $<value>1, $<value>2, $<value>4);
    }
    ;

VALUE: VARIABLE 
    | STRING 
    | INTEGER
    ;

%%

void yyerror (char *c) {
    printf("Error: %s\n", c);
}

int main () {
    yyparse();
    return 0;
}


