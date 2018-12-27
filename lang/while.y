%{
#include<stdio.h>
#include<stdlib.h>
%}
%name parser
%token ID NUM LE GE EE WHILE
%left '+' '-'
%left '*' '/'
%right '=' EE
%left LE GE

%%
S	:E {printf("Accepted");}
	;
E	:WHILE'('exp')''{'stmt'}'
	;
stmt	:E
	|exp1';'
	|exp1';'stmt
	;

exp1	:ID'='exp1
	|exp1'+'exp1
	|exp1'-'exp1
	|exp1'*'exp1
	|exp1'/'exp1
	|'-'exp1
	|ID
	|NUM
	;
exp	:ID'='exp1
	|exp1'>'exp1
	|exp1'<'exp1
	|exp1 GE exp1
	|exp1 LE exp1
	|exp1 EE exp1
	|ID
	|NUM
	;

%%
#include"lex.yy.c"
int main(){
yyin =fopen("in.txt","r");
yyparse();
return 0;
}
int yywrap(){}
void yyerror(char *msg){
fprintf(stderr,"%s\n",msg);}
