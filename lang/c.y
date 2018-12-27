%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
%}
%name parser
%token ID NUM
%left '+' '-'
%left '*' '/'

%%
S	:E {printf("value is:%d\n",$1);}
	;
E	:E'+'E {$$=$1+$3}
	|E'-'E {$$=$1-$3}
	|E'*'E {$$=$1*$3}
	|E'/'E {if($3==0){yyerror("can't divide bby zero");exit(0);} else{$$=$1/$3;}}
	|'-'E {$$=-$2}
	|NUM
	;

%%
#include"lex.yy.c"
int main(){
yyin=fopen("in.txt","r");
yyparse();
return 0;
}
