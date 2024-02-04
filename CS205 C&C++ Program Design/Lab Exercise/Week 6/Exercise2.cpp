#include<iostream>
using namespace std;
int fill_array(double arr[], int size){
    int i;
    for(i=0;i<size;i++){
        cout<< "Enter value #"<< i+1<< ": ";
        char c;
        cin>> c;
        if(c >= '0' && c <= '9'){
            arr[i] = c - '0';
        }
        else{
            break;
        }
    }
    return i;
}

void show_array(double *arr, int size){
    for(int i=0;i<size;i++){
        cout<< arr[i]<< " ";
    }
    cout<< endl;
}

void reverse_array(double *arr, int size){
    if(size <= 1){
        return;
    }

    double temp = arr[0];
    arr[0] = arr[size-1];
    arr[size-1] = temp;

    reverse_array(arr+1, size-2);
}

int main(){
    double *arr = new double[10];
    int size = fill_array(arr, 10);
    cout<< "The original array is: ";
    show_array(arr, size);
    reverse_array(arr, size);
    cout<< "The reversed array is: ";
    show_array(arr, size);
    delete [] arr;
    return 0;
}