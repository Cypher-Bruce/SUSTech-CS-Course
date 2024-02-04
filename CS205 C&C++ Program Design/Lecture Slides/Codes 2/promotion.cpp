#include <iostream>
using namespace std;

int main()
{
    //promotion
    signed char c1=127;
    signed char c2=10;
    int csum = c1 + c2; //singed char is promoted to int first
    cout << "csum = " << csum << endl;
    return 0;
}
