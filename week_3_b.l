%{ 
    #include <stdio.h>
    int vowels,consonants=0; 
%} 
  
%% 
[aeiouAEIOU] {vowels++;} 
[a-zA-Z] {consonants++;} 
%% 
int yywrap(){} 
int main() 
{ 
    printf("Input any string :"); 
    yylex(); 
    printf("\n No.of vowels :  %d\n", vowels); 
    printf("No.of consonants :  %d\n", consonants); 
    return 0; 
}  
