%{
#include <stdio.h>
%}

%%

"//".*               { printf("COMMENT\n"); }
"f"                  { printf("floatdcl id\n"); }
"i"                  { printf("intdcl id\n"); }
[a-zA-Z]+            { printf("id\n"); }
"="                  { printf("assign\n"); }
[0-9]+               { printf("inum\n"); }
[0-9]*"."[0-9]+      { printf("fnum\n"); }
"p"                  { printf("print id\n"); }
\n                   { /* ignorar saltos de línea */ }
[ \t]                { /* ignorar espacios y tabulaciones */ }

.                    { printf("UNKNOWN\n"); }

%%

int main() {
    yylex();
    return 0;
}