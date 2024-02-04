#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int N;
    cin >> N;

    int cnt = 0;
    cout<<"prime: ";
    for (int i = 2; i <= N; ++i) {
        if(i == 2){
            cout<< "2 ";
            cnt++;
            continue;
        }
        int flag = 1;
        for (int j = 2; j <= ceil(sqrt(i)); ++j) {
            if(i%j == 0){
                flag = 0;
                break;
            }
        }
        if(flag){
            cout<< i << " ";
            cnt++;
        }
    }
    cout<<endl<<"count: "<<cnt;
    return 0;
}
