#include "sales.h"
#include <iostream>

namespace SALES
{
    void setSales(Sales & s, const double ar[], int n){
        double sum = 0;
        s.max = ar[0];
        s.min = ar[0];
        for (int i = 0; i < n; i++){
            s.sales[i] = ar[i];
            sum += ar[i];
            if (ar[i] > s.max){
                s.max = ar[i];
            }
            if (ar[i] < s.min){
                s.min = ar[i];
            }
        }
        s.average = sum / n;
    }
    void showSales(const Sales & s){
        using std::cout;
        using std::endl;
        cout << "Sales: ";
        for (int i = 0; i < QUARTERS; i++){
            cout << s.sales[i] << " ";
        }
        cout << endl;
        cout << "Average: " << s.average << endl;
        cout << "Max: " << s.max << endl;
        cout << "Min: " << s.min << endl;
    }
}
