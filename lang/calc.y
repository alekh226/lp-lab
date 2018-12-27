%{
#include <stdio.h>
#include <stdlib.h>
extern int yylex();
void yyerror(char *msg);
%}
%token NUM
%left '+' '-'
%left '*' '/'
%%
S : E{printf("%d\n", $1);}
  ;

E : E '+' T     {$$ = $1 + $3;}
  | E '-' T     {$$ = $1 - $3;}
  | T           {$$ = $1;}
  ;

T : T '*' F     {$$ = $1 * $3;}
  | T '/' F     {$$ = $1 / $3;}
  | F           {$$ = $1;}
  ;

F : '(' E ')'   {$$ = $2;}
  | '-' F       {$$ = -$2;}
  | NUM         {$$ = $1;}
  ;

%%
main()
{
printf("Enter Expr : \n" );
if(yyparse()==0);
}
yywrap(){}
void yyerror(char *msg) {
    fprintf(stderr, "%s\n", msg);
    exit(1);
}

/*stmt:expr {printf("%d\n", $1);}
    ;
expr: expr '+' expr {$$ = $1 + $3;}
    | expr '-' expr {$$ = $1 - $3;}
    | expr '*' expr {$$ = $1 * $3;}
    | expr '/' expr {$$ = $1 / $3;}
    | '-' expr      {$$ =- $2;}
    | '(' expr ')'  {$$ = $2;}
    | NUM        {$$ = $1;}
    ;*/

