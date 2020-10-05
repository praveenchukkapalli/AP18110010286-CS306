
%{ 
    #include <stdio.h>
    int state=0; 
%} 
 /*defining rules i.e any numeric string consisting 000 , changes the state flag to 1 */
%%  
[0-9]*000[0-9]* state=1;

%% 
int yywrap(){} 
int main() 
{ 
    printf("Input any string :"); 
    yylex(); 
    //checking the state flag and printing the output
    if(state==0){
        printf("string rejected, does not contain three consecutive 0's (000)");
        }
     else{
         printf("string Accepted, contains three consecutive 0's (000)");
       
     }
    return 0; 
}  
