%{
#include "ejemplo1-5.tab.h"   /* Tokens de Bison */
%}
%%
"+"  { return ADD; }
"-"  { return SUB; }
"*"  { return MUL; }
"/"  { return DIV; }
"|"  { return ABS; }
[0-9]+  { yylval = atoi(yytext); return NUMBER; }
\n   { return EOL; }
[ \t] ;  /* ignora espacios */
.    { printf("Mystery character %c\n", *yytext); }
%%
