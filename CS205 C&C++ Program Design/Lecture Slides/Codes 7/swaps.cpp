// swaps.cpp -- swapping with references and with pointers
#include <iostream>
void swapr(int & a, int & b); // a, b are aliases for ints
void swapp(int * p, int * q); // p, q are addresses of ints
void swapv(int a, int b); // a, b are new variables

double refcube(const double &ra);

int main()
{
    using namespace std;
    int wallet1 = 300;
    int wallet2 = 350;
    cout << "wallet1 = $" << wallet1;
    cout << " wallet2 = $" << wallet2 << endl;
    
    cout << "Using references to swap contents:\n";
    swapr(wallet1, wallet2); // pass variables
    cout << "wallet1 = $" << wallet1;
    cout << " wallet2 = $" << wallet2 << endl;
    
    cout << "Using pointers to swap contents again:\n";
    swapp(&wallet1, &wallet2); // pass addresses of variables
    cout << "wallet1 = $" << wallet1;
    cout << " wallet2 = $" << wallet2 << endl;
    
    cout << "Trying to use passing by value:\n";
    swapv(wallet1, wallet2); // pass values of variables
    cout << "wallet1 = $" << wallet1;
    cout << " wallet2 = $" << wallet2 << endl;
    
    cout << "\n\nConsider the following code::\n";
    double side = 3.0;
    double * pd = &side;
    double & rd = side;
    long edge = 5L;
    double lens[4] = { 2.0, 5.0, 10.0, 12.0};
    
    double c1 = refcube(side); 
    double c2 = refcube(lens[2]); 
    double c3 = refcube(rd);
    double c4 = refcube(*pd);
    double c5 = refcube(edge); // wrong type: create a temporary and anonymous variable
    double c6 = refcube(7.0);  // create a temporary and anonymous variable
    double c7 = refcube(side + 10.0); // create a temporary and anonymous variable
    cout<< c1<<"  "<< c2<<"  "<< c3<<"  "<<c4<<"  "<<c5<<"  "<< c6<<"  "<<c7<<endl;
    
    long a = 3, b = 5;
    swapr((int &)a, (int &)b);
    cout << "a = " << a;
    cout << ", b = " << b << endl;
    
    return 0;
}

void swapr(int & a, int & b) // use references
{
    int temp;
    temp = a; // use a, b for values of variables
    a = b;
    b = temp;
}

void swapp(int * p, int * q) // use pointers
{
    int temp;
    temp = *p; // use *p, *q for values of variables
    *p = *q;
    *q = temp;
}

void swapv(int a, int b) // try using values
{
    int temp;
    temp = a; // use a, b for values of variables
    a = b;
    b = temp;
}

double refcube(const double &ra) 
{
    return ra * ra * ra;
}
