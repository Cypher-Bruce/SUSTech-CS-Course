#include "rectangle.h"
#include <iostream>
using namespace std;

int main(){

    Rectangle r1 = Rectangle();
    Rectangle r2 = Rectangle(4, 35.2);
    
    r1.display();
    r2.display();
    cout << "Number of rectangles: " << Rectangle::getCount() << endl;
    
    return 0;
}