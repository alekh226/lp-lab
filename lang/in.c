%{
#include<stdio.h>
#include<stdlib.h>
int d=0,w=0,c=0;
%}

%%
do/while {d++;}
while w++;
\n {;}
. {;}
%%

int main(){

yyin=fopen("in.c","r");
yylex();

printf("while: %d\n",w);

printf("do while:%d \n",d);

}

int yywrap(){}
