%{
#include <stdio.h>
#include <stdlib.h>

int yylex(void);
int yyerror(char *s);
%}

%token NUMBER
%token ADD SUB MUL DIV
%token AND OR
%token ABS
%token EOL

%%

calclist:
      /* nothing */
    | calclist exp EOL   { printf("= %d (0x%x)\n", $2, $2); }
    | calclist EOL
    ;

exp:
      exp OR term   { $$ = $1 | $3; }
    | exp AND term  { $$ = $1 & $3; }
    | exp ADD term  { $$ = $1 + $3; }
    | exp SUB term  { $$ = $1 - $3; }
    | term
    ;

term:
      term MUL factor { $$ = $1 * $3; }
    | term DIV factor { $$ = $1 / $3; }
    | factor
    ;

factor:
      NUMBER
    | ABS factor { $$ = $2 >= 0 ? $2 : -$2; }
    ;

%%

int main() {
    return yyparse();
}

int yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
    return 0;
}
