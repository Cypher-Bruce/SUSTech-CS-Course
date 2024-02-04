#include <iostream>
#include <memory>

using namespace std;

int main(){

    double *p_reg = new double(5);
    shared_ptr<double> pd(p_reg);
    cout << "*pd = " << *pd << endl;

    shared_ptr<double> pshared = make_shared<double>(*p_reg);
    cout << "*pshared = " << *pshared << endl;

    string *str = new string("Hello World!");
    shared_ptr<string> pstr(str);
    cout << "*pstr = " << *pstr << endl;

    return 0;
}