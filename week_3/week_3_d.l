
%{ 
    #include <stdio.h>
    int state=0; 
%} 
 /*defining rules i.e any numeric string ending with 00, changes the state flag to 1*/
%%  
[0-9]*00 state=1;
%% 
int yywrap(){} 
int main() 
{ 
    printf("Input any string :"); 
    yylex(); 
    //checking the state flag and printing out the result
    if(state==0){
        printf("string rejected, doesn't end with 00");
        }
     else{
         printf("string Accepted, ends with 00");
       
     }
    return 0; 
}  
