%{ 
    #include <stdio.h>
    int chr=0;
%} 
/*defining rules i.e any vowel character , changes the flag chr stating it is a vowel.*/
%% 
[aeiouAEIOU] chr=1;

%% 
int yywrap(){} 
int main() 
{ 
    printf("Input any character to check whether it is a vowel or consonant  :"); 
    yylex(); 
    //checking the flag and printing output 
    if(chr==0){
        printf("Given character is consonant\n");
        }
     else{
         printf("Given character is vowel\n");
       
     }
    return 0; 
}  
