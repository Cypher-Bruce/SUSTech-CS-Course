// vegnews.cpp -- using new and delete with classes
// compile with strngbad.cpp
#include <iostream>
using std::cout;
#include "strbad.h"

void callme1(StringBad &); // pass by reference
void callme2(StringBad); // pass by value

int main()
{
    using std::endl;
    {
        cout << "Starting an inner block.\n";
        StringBad headline1("Celery Stalks at Midnight");
        StringBad headline2("Lettuce Prey");
        StringBad sports("Spinach Leaves Bowl for Dollars");
        cout << "headline1: " << headline1 << endl;
        cout << "headline2: " << headline2 << endl;
        cout << "sports: " << sports << endl<<endl;
        
        callme1(headline1);
        cout << "headline1: " << headline1 << endl<<endl;
        
        callme2(headline2); //What constructor is used here?
        cout << "headline2: " << headline2 << endl<<endl;
        
        cout << "Initialize one object to another:\n";
        StringBad sailor = sports; //What constructor is used here?
        cout << "sailor: " << sailor << endl<<endl;

        cout << "Assign one object to another:\n";
        StringBad knot;  // what happened here?
        knot = headline1;
        cout << "knot: " << knot << endl<<endl;
        
        cout << "Exiting the block.\n";
    }
    
    cout << "End of main()\n";
    return 0;
}

void callme1(StringBad & rsb)
{
    cout << "String passed by reference:\n";
    cout << " \"" << rsb << "\"\n";
}

void callme2(StringBad sb)
{
    cout << "String passed by value:\n";
    cout << " \"" << sb << "\"\n";
}
