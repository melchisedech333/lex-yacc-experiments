%{
    #include <stdio.h>
    #include <string.h>

    void yyerror (char *c);
    int yylex (void);
%}

%union {
	char *value;
};

%token DEFINITION VARIABLE TYPE ATTR STRING INTEGER END

%%

PROGRAM: 
    | PROGRAM EXPRESSION
    ;

EXPRESSION: DEFINITION VARIABLE ATTR VALUE END {
        printf(" var %s -> %s\n", $<value>2, $<value>4);
    }
    | DEFINITION VARIABLE TYPE ATTR VALUE END {
        printf(" var %s (%s) -> %s\n", $<value>2, $<value>3, $<value>5);
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


