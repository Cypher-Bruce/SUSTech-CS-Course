#include<stdio.h>
#define M_PI 3.14159265358979323846

int main(){
    double before, after;
    char type;
    scanf("%lf %c", &before, &type);
    if(type == 'd'){
        after = before / 180 * M_PI;
    }else{
        after = before * 180 / M_PI;
    }
    printf("%.2lf", after);
}