#include<stdio.h>
#include<string.h>
int main(){
char str1[100];
int trans[4][2]={{1,2},{0,3},{3,0},{2,1}};
printf("EnterString\n");
scanf("%[^\n]s",str1);
int state=0;

for(int i=0;str1[i]!='\0';i++){
int temp = str1[i]-'0';
state = trans[state][temp-1];
if(state<=-1 && state>=4)
	break;
}

if(state==0)
printf("accepted\n");
else
printf("not accepted\n");
return 0;
} 
