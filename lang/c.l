%{
#include<math.h>
%}
%%
[a-zA-Z]+[a-zA-Z0-9]* return ID;
[0-9]+ {yylval = atoi(yytext); return NUM;}
[+\-\*\/] return yytext[0];
[ \t\f\v\n]                      { ; }
. {;}
%%
