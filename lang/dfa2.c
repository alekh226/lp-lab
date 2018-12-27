#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main(){
char str[100];
char* str1=str;
size_t bufsize = 32;
size_t characters;
printf("Type something: ");
//characters = getline(&str1,&bufsize,stdin);
scanf("%[^\n]s",str);
int trans[4][3]={{1,2,3},{1,2,3},{-1,2,3},{-1,-1,3}};
int i=0;
int state =0;
while(str[i]!='\0'){
int k = str[i]-'0';
state= trans[state][k-1];
printf("State:%d\n",state);
if(state==-1 || state>3) {
	printf("invalid char\n");
	exit(0);
}


i++;
}
int len = strlen(str);
if(state==3 || state==2 || state==1 ||len==0)
	printf("Pattern accepted\n");
else
	printf("Pattern not accepted\n");
return 0;
}
