#include <iostream>
#include "complex.h"
using namespace std;

int main(){
    Complex a(3,4);
    Complex b(2,6);

    cout << "a = " << a << endl;
    cout << "b = " << b << endl;
    cout << "~b = " << ~b << endl;
    cout << "a + b = " << a + b << endl;
    cout << "a - b = " << a - b << endl;
    cout << "a - 2 = " << a - 2 << endl;
    cout << "a * b = " << a * b << endl;
    cout << "2 * a = " << 2 * a << endl;

    Complex c = b;
    cout << "b == c? " << boolalpha << (b == c) << endl;
    cout << "b != c? " << (b != c) << endl;
    cout << "a == b? " << (a == b) << endl;

    Complex d;
    cout << "Enter a complex number:";
    cin >> d;
    cout << "d = " << d << endl;
    return 0;
}