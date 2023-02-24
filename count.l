%{
	#include<stdio.h>
	int m=0,n=0,t=0,c=0;
%}


%%
"\n" n++;
"\t" m++;
[ ]   t++;
. c++;
%%

int main()
{
yylex();
printf("No of lines= %d\n tabs = %d \n space = %d \nchars = %d\n",n,m,t,c);
return 0;
}
