%{
#include <stdio.h>
#include <stdlib.h>
#include "lex.yy.c"
extern int yylex();
void yyerror(char *msg);
%}
%token ID NUMBER
%left '+' '-'
%left '*' '/'
%%
stmt:expr
    ;
expr: expr '+' expr
    | expr '-' expr
    | expr '*' expr
    | expr '/' expr
    | '-' expr
    | '(' expr ')'
    | NUMBER
    | ID
    ;
%%
void main()
{
printf("Enter Expr : \n" );
yyparse();
printf("valid Expr\n");
}
yywrap(){}
void yyerror(char *msg) {
    fprintf(stderr, "%s\n", msg);
    exit(1);
}


/*
cs2015088@dslab-Veriton-Series:~/Desktop$ lex arit.l
cs2015088@dslab-Veriton-Series:~/Desktop$ yacc arit.y
cs2015088@dslab-Veriton-Series:~/Desktop$ gcc y.tab.c
cs2015088@dslab-Veriton-Series:~/Desktop$ ./a.out
Enter Expr : 
12341+q23423
syntax error
cs2015088@dslab-Veriton-Series:~/Desktop
*/
