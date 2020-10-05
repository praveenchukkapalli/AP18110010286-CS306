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
    int zero,one=0;
    //initializing two variables to keep track of no.of zeros and ones
    for(int i=0;i<n;i++){
        int temp;
        printf("enter digit %d : ",i+1);
        scanf("%d",&temp);
        if(temp==0){
            zero+=1;
        }
        else{
            one+=1;
        }
    }
    //checking whether the 0's and 1's counter is even or not and returning the same
    if(zero%2==0 && one%2==0){
        printf("\n\nThe given binary string contains even number of 0's and 1's");
    }
    else{
        printf("The given binary string does not contain even number of 0's and 1's ");
    }
    return 0;
}
