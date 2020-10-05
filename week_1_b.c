
#include <stdio.h>

int main()
{
    int n;
    
    printf("enter the size of binary string to be entered : ");
    scanf("%d",&n);
   
    printf("enter the binary string \n");
    //initializing two variables for storing the last two digits of binary string 
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
    //checking whether the last two binary digits are same
    if(l==sl){
        printf("\n\nstring accepted, The given binary string ends with two same symbols");
    }
    else{
        printf("\n\nstring rejected, The given binary string does not end with two same symbols ");
    }
    return 0;
}

