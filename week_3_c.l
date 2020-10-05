%{ 
#include<stdio.h> 
int lines_count=0;
%} 
  
/*defining rules i.e any alpha-numeric charcaters following by next line command(\n or enter)*/
%% 
[a-z A-Z 0-9]*\n {lines_count++;} 

%% 
  
int main() 
{ 
    //analysing the input
    yylex(); 
    printf("\nNo. of lines=%d", lines_count);   
    //printing the output
   
    
    }
      
