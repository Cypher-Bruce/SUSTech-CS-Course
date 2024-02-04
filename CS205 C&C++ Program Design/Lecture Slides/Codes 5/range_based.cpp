// range_based.cpp for loop
#include <iostream>
using namespace std;

int main()
{
    double prices[5] = {4.99, 10.99, 6.87, 7.99, 8.49};
    for (double x : prices)
       cout << x << std::endl;
       
    int i = 0;
    for (double & x : prices)
    {
       x = x * 0.80; //20% off sale
       cout << x <<"  "<< prices[i++]<<endl;
    }
    
    /* 
    for (int x : {3, 5, 2, 8, 6})
       cout << x << " ";
    
    cout << 'n';
	*/

    return 0;
}
