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
%token ARRAY_A_OPEN ARRAY_A_CLOSE

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
    | ARRAY_A
    ;

ARRAY_A: ARRAY_A_OPEN ARRAY_A_CLOSE
    | ARRAY_A_OPEN ARRAY_ELEMENTS ARRAY_A_CLOSE {
        int size  = strlen($<value>2) + 5;
        $<value>$ = (char *) malloc(size);
        sprintf($<value>$, "[ %s ]", $<value>2);
    }
    ;

ARRAY_ELEMENTS: VALUE {
        $<value>$ = $<value>1;
    }
    | VALUE SEPARATOR ARRAY_ELEMENTS {
        int size  = strlen($<value>1) + strlen($<value>3) + 10;
        $<value>$ = (char * )malloc(size);
        sprintf($<value>$, "%s, %s", $<value>1, $<value>3);
    }
    ;

%%

void yyerror (char *c) {
    printf("Error: %s\n", c);
}

int main () {
    yyparse();
    return 0;
}


