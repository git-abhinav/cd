%{
%}

%%
([\t' '])*\n {}; 
%%

int yywrap(void){
    return 0;
}

int main(){
    yylex();
    return 0;
}
