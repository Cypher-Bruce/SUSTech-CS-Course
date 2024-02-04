
#include <iostream>

int main()
{
    using std::cout;
    using std::endl;    

    int x = 20; // original x    

    { // block starts

        cout << x << endl; // use original x

        int x = 100; // new x

        cout << x << endl; // use new x

    } // block ends

    cout << x << endl; // use original x
    
    return 0;

}
