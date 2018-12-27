%{
%}
letter [a-zA-Z]
digit [0-9]
%%
[a]* {printf("jjjh:%d",yyleng);return yytext[0];}
\n {;}
. return yytext[0];
%%
