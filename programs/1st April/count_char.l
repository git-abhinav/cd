%{ 
#include<stdio.h> 
int char_count = 0; 
%} 
%%
. {char_count++;}
"\n" {
        printf("Number of characters are : %d", char_count); 
        char_count = 0;
        printf("\n");
    } 
%% 
int yywrap(void){} 
int main() 
{    
    yylex(); 
    return 0; 
} 
