/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <stdio.h>

int main()
{
    int n;
    
    printf("enter the size of binary string to be entered : ");
    scanf("%d",&n);
   
    printf("enter the binary string \n");
    int l,sl=0;
    for(int i=0;i<n;i++){
        int temp;
        printf("enter digit %d : ",i+1);
        scanf("%d",&temp);
        
        if(i==n-1){
            l=temp;
        }
        else if(i==n-2){
            sl=temp;
        }
    }
    if(l==sl){
        printf("\n\nThe given binary string ends with two same symbols");
    }
    else{
        printf("\n\nThe given binary string does not end with two same symbols ");
    }
    return 0;
}

