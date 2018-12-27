%{
#include<stdio.h>
#include<string.h>
FILE *ff,*fr;
char p[20],q[20],r[20];
%}
word [aeiou]+
eol [\n]
%%
{word} {
                if(strcmp(p,yytext)==0)
                        fprintf(fr,q);
                else
                        fprintf(fr,yytext);

        }
{eol} {fprintf(fr,yytext);}
. {fprintf(fr,yytext);}
%%
int main()
{
        strcpy(p,"aaa");
        strcpy(q,"zzz");
        ff=fopen("in.txt","r+");
        fr=fopen("rep.txt","w");   yyin=ff;
        yylex();
        return(0);
}
int yywrap(){}
