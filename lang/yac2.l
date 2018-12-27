%{
#include "y.tab.h"
#include<math.h>
extern yyval;
%}
%%
[0-9]+ {yylval=atoi(yytext);return num;}
[+] {return '+';}
[-] {return '-';}
[*] {return '*';}
[/] {return '/';}
[\t]+;
\n {return 0;}
{
return yytext[0];
}
%%
