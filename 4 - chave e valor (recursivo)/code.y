%{
    #include <stdio.h>
    #include <string.h>

    void yyerror (char *c);
    int yylex (void);
%}

%union {
	char *value;
};

%token OPEN CLOSE ATTR SEPARATOR JSTRING JINTEGER

%%

PROGRAM: OBJECT {
        printf("FINAL: %s\n", $<value>$);
    }   
    ;

OBJECT: OPEN MEMBERS CLOSE {
        int size    = strlen($<value>2);
        $<value>$   = (char *) malloc(size);
        sprintf($<value>$, "{%s}", $<value>2);
        printf("OBJECT: %s\n", $<value>$);
    }
    ;

MEMBERS: PAIR {
        $<value>$ = $<value>1;
        printf("MEMBERS (PAIR): %s\n", $<value>$);
    }
    | PAIR SEPARATOR MEMBERS {
        int size   = strlen($<value>1) + strlen($<value>3);
        $<value>$  = (char *) malloc(size);
        sprintf($<value>$,"%s,%s", $<value>1, $<value>3);
        printf("MEMBERS (PAIR S. M.): %s\n", $<value>$);
    }
    ;

PAIR: JSTRING ATTR VALUE {
        int size   = strlen($<value>1) + strlen($<value>3);
        $<value>$  = (char *) malloc(size);
        sprintf($<value>$,"%s:%s", $<value>1, $<value>3);
        printf("PAIR: %s\n", $<value>$);
    }
    ;

VALUE: JSTRING
    | JINTEGER
    | OBJECT
    ;

%%

void yyerror (char *c) {
    printf("Error: %s\n", c);
}

int main () {
    yyparse();
    return 0;
}


