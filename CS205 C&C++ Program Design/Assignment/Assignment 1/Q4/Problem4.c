#include<stdio.h>
#include<math.h>
#define PI 3.14159265358979323846

int main(){
    int num;
    scanf("%d", &num);
    int dp[36000], dp_temp[36000], angles[num];
    for (int i = 0; i < num; i++){
        double temp;
        scanf("%lf", &temp);
        angles[i] = temp * 100;
    }
    
    for (int i = 0; i < 36000; i++){
        dp[i] = 0;
    }
    dp[0] = 1;

    for (int i = 0; i < num; i++){
        for (int j = 0; j < 36000; j++){
            dp_temp[j] = dp[j];
        }
        for (int j = 0; j < 36000; j++){
            if(dp_temp[j] == 1){
                dp[(j + angles[i]) % 36000] = 1;
            }
        }
    }
    
    int index_max = 0;
    for (int i = 0; i < 36000; i++){
        if(dp[i] == 1 && sin(i / 18000.0 * PI) > sin(index_max / 18000.0 * PI)){
            index_max = i;
        }
    }

    printf("%.2lf", sin(index_max / 18000.0 * PI));
    return 0;
}