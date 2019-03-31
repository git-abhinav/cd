%{
#include <stdio.h>
#include <string.h>
char str[50];
int size=0;
%}
%%
[a-zA-Z0-9]* {
    strcpy(str,yytext);
    }
"\n" {
    //strrev(str);
    for(int i=0;str[i]!='\0';++i)
        size++;
    size=size-1;
    for(int i=0;i<=size;++i)
        printf("%c",str[size-i]);
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
