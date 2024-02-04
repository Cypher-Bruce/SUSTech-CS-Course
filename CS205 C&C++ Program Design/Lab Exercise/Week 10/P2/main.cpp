#include<iostream>
#include "sales.h"

int main(){
    using namespace SALES;
    using std::cout;
    using std::cin;
    using std::endl;
    Sales s;
    int n;
    double ar[QUARTERS];
    cout << "Input n:";
    cin >> n;

    if(n > QUARTERS){
        cout << "n is not correct." << endl;
        return 0;
    }

    cout << "Please input " << n << " double values:";
    for (int i = 0; i < n; i++){
        cin >> ar[i];
    }

    setSales(s, ar, n);
    showSales(s);
    
    return 0;
}