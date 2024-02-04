// plus_one.cpp -- the increment operator
#include <iostream>
int main()
{
    using std::cout;
    using std::endl;
    
    int b = 0;
    
    int y = (1 + b++) + (1 + b++);
    cout << y << endl;
    //=====================================
    
    double arr[5] = {21.1, 22.8, 23.7, 24.1, 25.4};
    
    double *pt = arr; // pt points to arr[0], i.e. to 21.1
    ++pt; // pt points to arr[1], i.e. to 22.8
    
    double x = *++pt; // increment pointer, take the value; i.e., arr[2], or 23.7
    
    cout << "x is: " << x << endl;
    
    cout << ++*pt << endl; // increment the pointed to value; i.e., change 23.7 to 24.7
    
    cout << (*pt)++ << endl; // print the original value and increment pointed-to value
    
    x = *pt++; // dereference original location, then increment pointer
    
    cout << "x is: " << x << endl;

    return 0;
}
