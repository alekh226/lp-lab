%{
%}

%%
while return WHILE;
[a-zA-Z]+[a-zA-Z0-9]* return ID;
[0-9]+ return NUM;
">=" return GE;
"<=" return LE;
"==" return EE;
\n {;}
. return yytext[0];
%%
