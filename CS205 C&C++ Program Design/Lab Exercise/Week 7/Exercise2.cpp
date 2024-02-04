#include<iostream>
#include<cstring>
using namespace std;

template <typename T>
T maxn(T arr[], int n){
    T max = arr[0];
    for(int i = 1; i < n; i++){
        if(arr[i] > max){
            max = arr[i];
        }
    }
    return max;
}

template int maxn<int>(int arr[], int n);
template double maxn<double>(double arr[], int n);

template<>
const char * maxn<const char *>(const char * arr[], int n){
    const char * max = arr[0];
    for(int i = 1; i < n; i++){
        if(strlen(arr[i]) > strlen(max)){
            max = arr[i];
        }
    }
    return max;
}


int main(){
    int arr1[5] = {1, 2, 3, 4, 5};
    double arr2[4] = {1.1, 2.7, -3.5, -2};
    const char * arr3[5] = {"this", "no body", "morning", "birds", "sky"};
    cout << "Max int is: " << maxn(arr1, 5) << endl;
    cout << "Max double is: " << maxn(arr2, 4) << endl;
    cout << "Max string is: " << maxn(arr3, 5) << endl;
    return 0;
}