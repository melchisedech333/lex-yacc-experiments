%{
    #include <stdio.h>
    #include <string.h>

    void yyerror (char *c);
    int yylex (void);
%}

%union {
	struct {
        int     type;
        int     integer;
        char *  unknown;
    } token;
};

%token TOKEN
%token TOKEN_UNKNOWN TOKEN_INTEGER 

%%

SENTENCE:
    SENTENCE TOKEN {
        switch ( $<token.type>2 ) {
            case TOKEN_UNKNOWN:
                printf("type: UNKNOWN\ntoken: %s\n\n", $<token.unknown>2);
                break;
            case TOKEN_INTEGER:
                printf("type: INTEGER\ntoken: %d\n\n", $<token.integer>2);
                break;
        }
    }
    |
    ;
    
%%

void yyerror (char *c) {
    printf("Error: %s\n", c);
}

int main () {
    yyparse();
    return 0;
}


