%{
#include <stdio.h>
#include <string.h>
char str[50]; 
int size=0;
%}
%%
[a-zA-Z0-9 ]+ { strcpy(str,yytext);
		size+= yyleng; }
"\n" {
    for(int i=0;i<size;++i)
        printf("%c",str[size-1-i]);
    size=0;
    printf("\n");
}
%%
int yywrap(void){}
int main()
{
    yylex();
    return 0;
}
