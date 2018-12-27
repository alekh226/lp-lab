#include<stdio.h>
#include<string.h>
int main(){
char str1[100];
printf("EnterString\n");
scanf("%s",str1);
int i=0, state=0;
while(str1[i]!='\0'){
char a=str1[i];

if(a=='1' && state==0)
	state=1;
else if(a=='2' && state==0)
	state=2;
else if(a=='3' && state==0)
	state=3;
else if(a=='1' && state==1)
	state=1;
else if(a=='2' && state==1)
	state=2;
else if(a=='3' && state==1)
	state=3;
else if(a=='2' && state==2)
	state=2;
else if(a=='3' && state==2)
	state=3;
else if(a=='3' && state==3)
	state=3;
else{
	printf("invalid String\n");
	state=100;
	break;
	}
i++;
}
if(state>=0 && state<=3)
printf("accepted\n");
return 0;
} 
