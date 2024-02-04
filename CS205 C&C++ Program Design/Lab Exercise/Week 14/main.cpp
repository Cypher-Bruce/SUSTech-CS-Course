#include <iostream>
#include "CStereoShape.h"

using namespace std;

int main(){
    CCube a_cube(4,5,6);
    CSphere c_sphere(7.9);

    CStereoShape *p = &a_cube;
    p->Show();

    p = &c_sphere;
    p->Show();

    cout << "Number of objects: " << CStereoShape::GetNumOfObject() << endl;
    return 0;
}