%{ 
    #include <stdio.h>
    int vowels,consonants=0; 
   
%}
 /*defining rules i.e any vowel character, incrementing vowels variable by 1, and same for consonant*/ 
%%
[aeiouAEIOU] {vowels++;} 
[a-zA-Z] {consonants++;} 
%% 
int yywrap(){} 
int main() 
{ 
    printf("Input any string :"); 
    yylex(); 
    //printing out the no.of vowels and consonants in the given text or string
    printf("\n No.of vowels :  %d\n", vowels); 
    printf("No.of consonants :  %d\n", consonants); 
    return 0; 
}  
