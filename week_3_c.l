
%{ 
#include <stdio.h>
int lines_count=0; 
%} 
  

%% 
\n lines_count++; 

%% 
int yywrap(){}  
int main() 
{ 
    
    yylex(); 
    printf("No.of lines : %d", lines_count);   
 
      
} 
