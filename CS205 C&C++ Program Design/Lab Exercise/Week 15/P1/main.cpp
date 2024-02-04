#include <iostream>
#include "point.h"

using namespace std;

int main(){
    Point p1(8, 9);
    Point p2(1, -1);
    Line l1(p1, p2);

    cout << "test point a: x = " << p1.getX() << ", y = " << p1.getY() << endl;
    cout << "test point b: x = " << p2.getX() << ", y = " << p2.getY() << endl;
    cout << "test line: distance = " << l1.getDistance() << endl;
}