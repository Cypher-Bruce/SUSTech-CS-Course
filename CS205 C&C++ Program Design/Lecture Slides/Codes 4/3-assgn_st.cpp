// assgn_st.cpp -- assigning structures
#include <iostream>
using namespace std;

struct inflatable
{
    char name[20];
    float volume;
    double price;
};

union one4all
{
    int int_val;
    long long_val;
    double double_val;
};

int main()
{
    inflatable bouquet {"sunflowers", 0.20, 12.49};
    
    inflatable choice;
    cout << "bouquet: " << bouquet.name << " for $";
    cout << bouquet.price << endl;

    choice = bouquet; // assign one structure to another

    cout << "choice: " << choice.name << " for $";
    cout << choice.price << endl;
    
    //======================================================
    one4all pail;
    pail.int_val = 15; // store an int
    cout << pail.int_val<<endl;
    pail.double_val = 1.38; // store a double, int value is lost
    cout << pail.double_val<<endl;
    
    //cout << pail.int_val<<endl;
    
    return 0;
}
