%{
  #include<stdio.h>
  int flag=0;
%}

%%
[a-zA-Z_][a-zA-Z0-0_]* {flag++; printf("\tvalid identifier = %s",yytext);}
. { printf("\tinvalid identifier = %s",yytext);}

%%

int main()
{
  yylex();
  printf("Totalnumber of valid identifier = %d\n",flag);
  return 0;
}
