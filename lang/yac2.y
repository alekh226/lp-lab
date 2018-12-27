%{
#include<stdio.h>
%}
%token num
%left '-''+'
%right '*''/'
%%
start: exp{printf("%d\n",$$);}
exp:exp'+'exp {$$=$1+$3;}
|exp'-'exp {$$=$1-$3;}
|exp'*'exp {$$=$1*$3;}
|exp'/'exp
{
if($3==0)
yyerror("error");
else
{
$$=$1/$3;
}
}
|'('exp ')' {$$=$2;}
|num {$$=$1;}
;
%%
main()
{
printf("enter the expression:\n");
if(yyparse()==0)
printf("success\n");
}
yywrap(){}
yyerror()
{
printf("error");
}

