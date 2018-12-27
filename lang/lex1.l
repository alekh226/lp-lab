%{
int count=0;
%}
letter [a-zA-Z]
num[0-9]
%%

dowhile count++;

\n {; }
. {;}
%%
int main()
{
yyin = fopen("pract.c","r");
yylex();
printf("There were %d loop\n",
count);
return 0;
}
int yywrap(){
}
