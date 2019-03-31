%{ 
#include<stdio.h> 
int char_count = 0; 
%} 
%% 
[a-z] {char_count++;} 
[A-Z] {char_count++;}
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