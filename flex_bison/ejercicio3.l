%{
#include "ejercicio3.tab.h"
#include <stdlib.h>
%}

%%

"+"             { return ADD; }
"-"             { return SUB; }
"*"             { return MUL; }
"/"             { return DIV; }

"&"             { return AND; }
"|"             { return OR; }

"~"             { return ABS; }

0[xX][0-9a-fA-F]+    { yylval = strtol(yytext, NULL, 0); return NUMBER; }
[0-9]+               { yylval = atoi(yytext); return NUMBER; }

"//".*          { }
\n              { return EOL; }
[ \t]+          { }

.               { printf("Caracter desconocido: %s\n", yytext); }

%%

int yywrap(void) { return 1; }
