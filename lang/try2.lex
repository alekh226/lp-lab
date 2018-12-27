%{
#include<stdio.h>
int d=0,w=0,c=0;
%}

%%

while w++;
d0 while d++;
\n {;}
. {c++;}
%%

int main(){

yyin=fopen("in.c","r");
yylex();

printf("while: %d\n",w);

printf("do while:%d \n",c);

}

int yywrap(){}
