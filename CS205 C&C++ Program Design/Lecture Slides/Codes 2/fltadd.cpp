#include <iostream>
#include <cmath>

int main()
{
    using namespace std;
    cout.setf(ios_base::fixed, ios_base::floatfield); // fixed-point
    
    float a = 2.34E+10f;
    float b = a + 10.0f;
    cout << "a = " << a << endl;
    cout << "b = " << b << endl;
    cout << "b - a = " << b - a << endl;

    return 0;
}

