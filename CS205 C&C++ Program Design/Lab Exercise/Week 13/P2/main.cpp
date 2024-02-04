#include <iostream>
#include "matrix.h"

using namespace std;

int main(){

    Matrix a(3,4);
    Matrix b(3,4);

    a(1,2) = 3;
    b(2,3) = 4;
    Matrix c = a + b;
    Matrix d = a;
    d = b;
    b(2,3) = 5;
    cout << d(2,3) << endl;
    return 0;
}