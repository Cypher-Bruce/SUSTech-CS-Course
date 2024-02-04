#include<iostream>
#include "functions.h"
using namespace std;

int main(){
    int a = 30 , b = 6;
    cout << "a = " << a << " b = " << b << endl;
    cout << "a + b = " << myAdd(a,b) << endl;
    cout << "a - b = " << mySub(a,b) << endl;
    cout << "a * b = " << myMul(a,b) << endl;
    cout << "a / b = " << myDiv(a,b) << endl;
    return 0;
}