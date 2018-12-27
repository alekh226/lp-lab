%{
#include<stdio.h>
#include<string.h>
int c=0,v=0;
%}


%%
[a] {strcpy(yytext,"lol");} 
.       { ; } 
%%
int main(){
extern FILE *yyin, *yyout; 
yyin=fopen("in.txt","r");
yyout=fopen("in.txt","w");
yylex();
}
int yywrap(){}
