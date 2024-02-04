#include<iostream>
#include<cstring>
using namespace std;

void passByPtr(int * ptr){
    cout << *ptr++ << endl;
}

int main(){
    int x = 5;
    passByPtr(&x);
    cout << "x = " << x << endl;
    return 0;
}