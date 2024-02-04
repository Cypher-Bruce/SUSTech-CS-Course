#include<iostream>
using namespace std;

int main(){
    int *pt = NULL, *t;
    pt = new int [5];
    
    if(pt == NULL){
        cout << "Memory allocation failed." << endl;
        exit(0);
    }

    for(int i = 0; i < 5; i++){
        pt[i] = i;
    }

    for(t = pt + 4; t >= pt; t--){
        cout << *t << " ";
    }

    delete [] pt;
    return 0;
}