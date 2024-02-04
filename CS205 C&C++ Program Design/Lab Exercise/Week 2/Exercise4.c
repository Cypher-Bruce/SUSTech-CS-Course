#include<stdio.h>

int main(){
    printf("Please input a character: \n");
    char c;
    scanf("%c", &c);
    printf("Please input an integer: \n");
    int n;
    scanf("%d", &n);
    printf("Please input a float: \n");
    float f;
    scanf("%f", &f);
    printf("The variables you entered were: \n");
    printf("The character is: %c\n", c);
    printf("The integer is: %d\n", n);
    printf("The float is: %f\n", f);
    return 0;
}