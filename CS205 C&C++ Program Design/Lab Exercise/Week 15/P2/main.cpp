#include <iostream>
#include "pair.h"

using namespace std;

int main()
{
    Pair<string,int> one("Tom",19);
    Pair<string,int> two("Alice",20);
    if(one < two)
        cout << one;
    else
        cout << two;
    return 0;
}