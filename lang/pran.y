%{
#include<stdio.h>
#include<stdlib.h>
%}
%name parse
%%
stmt:expr1 {printf("accepted\n");}
     ;
expr1:'a'expr1
     |'b'expr2
     |'a'
    ;
expr2:'b'expr2
     |error {yyerror("lol");exit(0);}
      |
      ;

%%

#include"lex.yy.c"
int main(){
yyin = fopen("in.txt","r");
yyparse();
}

