%{
#include<stdio.h>
#include"y.tab.h"
%}
%%
[a-zA-Z] {return id;}
[0-9]+ {return number;}
[\t] {;}
\n {return 0;}
. {return yytext[0];}
%%
