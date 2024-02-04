// addpntrs-2.cpp -- pointer addition
#include <iostream>
int main()
{
    using namespace std;
    
    short tell[10];  // tell an array of 10 bytes
    cout << "short type is: " << sizeof(short) << endl;
    
    cout << tell << endl;           // displays &tell[0]
    cout << &tell << endl;        // displays address of whole array   
    cout << &tell[0] << endl;   // displays the address of first element  

    cout << "tell + 1:     "<< tell + 1 << endl;    // move 2 bytes
    cout << "&tell + 1:    "<< &tell + 1 << endl;   // move 20 bytes
    cout << "&tell[0] + 1: "<< &tell[0] + 1 << endl;// move 2 bytes
    
    short (*pas)[10] = &tell;// try to replace 10 by 20
    
    cout << "pas:       "<< pas << endl;       // same to address of whole array  = &tell
    cout << "pas + 1: "<< pas + 1 << endl;   // move 20 bytes
    
    cout << "*pas:     "<< *pas << endl;         // same to address of first element = tell
    cout << "*pas + 1: "<< *pas + 1<< endl;  // move 2 bytes    
    
    cout << "&pas:     "<< &pas << endl;    
    cout << "&pas + 1: "<< &pas + 1 << endl;
        
    return 0;
}