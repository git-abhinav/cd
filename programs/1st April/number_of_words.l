%{
#include<stdio.h>
int words=0;
%}

%%
[a-zA-Z0-9]+ {words++;}
[ ]+ {}
"\n" {
        printf("Number of words are : %d",words);
        words = 0;
        printf("\n");
     }
%%
int yywrap(void){}
int main()
{
    yylex();
    return 0;
}

