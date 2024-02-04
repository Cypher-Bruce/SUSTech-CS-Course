#include <iostream>
#include "stack.h"
using namespace std;

int main(){
    Stack st1;
    cout << "st1.isempty():";
    cout << boolalpha << st1.isempty() << endl;

    Stack st2(3);
    st2.push(1);
    st2.push(2);
    st2.push(3);
    cout << "st2.push(4):";
    cout << boolalpha << st2.push(4) << endl;
    cout << "st2.isfull():";
    cout << boolalpha << st2.isfull() << endl;
    Item item;
    st2.pop(item);
    cout << "st2.pop(item):";
    cout << item << endl;

    cout << "Before assignment:" << endl;
    cout << boolalpha << st1.isempty() << endl;
    st1 = st2;
    cout << "After assignment:" << endl;
    cout << boolalpha << st1.isempty() << endl;


    Stack st3(st2);
    Stack st4 = st2;
    cout << "st3:" << endl;
    cout << boolalpha << st3.isempty() << endl;
    cout << "st4:" << endl;
    cout << boolalpha << st4.isempty() << endl;

    st2.pop(item);
    st2.pop(item);
    cout << "st2.isempty():";
    cout << boolalpha << st2.isempty() << endl;
    cout << "st3.isempty():";
    cout << boolalpha << st3.isempty() << endl;
    cout << "st4.isempty():";
    cout << boolalpha << st4.isempty() << endl;
    return 0;
}