%{
#include<stdio.h>
#include<stdlib.h>
extern int yylex();
void yyerror(char *msg);
%}
%token id number
%left '+' '-'
%left '*' '/'
%%
stmt: expr
    ;
expr: expr '+' expr
    | expr '-' expr
    | expr '*' expr
    | expr '/' expr
    | '-' expr
    | '(' expr ')'
    | number
    | id
    ;
%%
void main()
{
	printf("enter expression : \n");
	yyparse();
	printf("valid expression\n");
}
yywrap()
{
}
void yyerror(char *msg)
{
	fprintf(stderr, "%s\n", msg);
	exit(1);
}
	
