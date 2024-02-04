#include <iostream>
int main()
{
    using namespace std;
    cout.setf(ios_base::fixed, ios_base::floatfield);

    float tree = 3; // int converted to float
    int guess(3.9832); // double converted to int
    cout << "tree = " << tree << endl;
    cout << "guess = " << guess << endl;

    int debt = 2.34E12f; //int unable to hold
    cout << "debt = " << debt << endl;

    return 0;
}

