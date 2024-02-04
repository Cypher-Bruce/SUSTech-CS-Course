#include<iostream>
#include"match.h"
using namespace std;

int main(){
    cout << "Please input a string: " << endl;
    char s[100];
    cin.getline(s, 100);
    cout << "Please input a character: " << endl;
    char ch;
    cin >> ch;
    const char* result = match(s, &ch);
    if(result == nullptr){
        cout << "Not Found" << endl;
    }else{
        cout << result << endl;
    }
    return 0;
}