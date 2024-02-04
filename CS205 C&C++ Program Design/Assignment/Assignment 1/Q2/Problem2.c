#include<stdio.h>
#include<math.h>

long fact(int n){
    if(n == 0){
        return 1;
    }
    return n * fact(n - 1);
}

int main(){
    double angle, sin_val = 0, cos_val = 0;
    int iter;
    char type;
    scanf("%lf %d %c", &angle, &iter, &type);

    if(type == 'd'){
        angle = angle / 180 * acos(-1);
    }

    for (int i = 0; i < iter; i++){
        sin_val += pow(-1, i) * (pow(angle, 2 * i + 1) / fact(2 * i + 1));
        cos_val += pow(-1, i) * (pow(angle, 2 * i) / fact(2 * i));
    }

    printf("%.2lf\n%.2lf", sin_val, cos_val);
    return 0;
}