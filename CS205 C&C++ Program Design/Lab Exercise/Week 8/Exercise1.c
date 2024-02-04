#include"swap.h"
#include<stdio.h>

int main(){
    printf("Please input two integers: ");
    int a, b;
    scanf("%d %d", &a, &b);

    printf("Before swap: a = %d, b = %d\n", a, b);

    swap(&a, &b);
    printf("After swap: a = %d, b = %d\n", a, b);

    return 0;
}