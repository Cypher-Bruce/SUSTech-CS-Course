#include <iostream>
#include <cfloat>
#include <cmath>
using namespace std;

int main()
{
    
    cout.setf(ios_base::fixed, ios_base::floatfield); // fixed-point
    
    const float million = 1.0e6;
    
    float tub = 10.0 / 3.0; // good to about 6 places
    double mint = 10.0 / 3.0; // good to about 15 places
    
    
    cout << "tub = " << tub;
    cout << ", a million tubs = " << million * tub;
    cout << ",\nand ten million tubs = ";
    cout << 10 * million * tub << endl;
    cout << "mint = " << mint << " and ten million mints = ";
    cout << 10*million * mint << endl;
    
    return 0;
}

