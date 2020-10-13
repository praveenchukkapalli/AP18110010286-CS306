%{
#include<stdio.h> 
#include<string.h> 

%}

start \/\* 
end  \*\/ 
/*regular expressions for comment start and end symbols*/
%%
void|main|for|while|if|else|while|int|switch|for|char|auto|break|case {fprintf(yyout,"%s : Keyword\n",yytext);} /*rule for identifying keywords*/
    
[-,+]?[0-9]+ {fprintf(yyout,"%s : Integer\n",yytext);}/*rule for identifying integers*/
{start}.*{end} {fprintf(yyout,"%s : comments - To Be Ignored \n", yytext);}/*rule for identifying comments*/
[<|>|<=|=>|!=]+ {fprintf(yyout,"%s : Relational operator\n",yytext);}/*rule for identifying Relational operators*/
[a-zA-Z]+ {fprintf(yyout,"%s : Identifiers\n",yytext);}/*rule for identifying identifiers*/    
%%


int main(){
extern FILE *yyin,*yyout;
yyin = fopen("input.txt", "r"); 
yyout = fopen("output.txt", "w");
//opening input.txt and output.txt for reading input ang writing output to file respectively
 
yylex(); //starting analyzing
printf("outputs with token and attributes written to output.txt file" );
	return 0;
}
int yywrap(){
	
}
