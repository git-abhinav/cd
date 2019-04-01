%{
//For variables and functions
%}

%%
([\t' '])*\n {printf("\n");}
.  {printf("%s",yytext);}
%%

int yywrap(void){return 1;}

int main()
{
	yylex();
	return 0;
}


