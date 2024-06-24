#include <iostream>
#include <random>
#include <time.h>
using namespace std;
int main() {
    srand(time(0));

    int N = 5, M = 20, T = 10;
    cout << N << " " << M << " " << T << endl;
    for (int i = 0; i < M; ++i) {
        int op = rand() % 2 + 1;
        int key = rand() % 10 + 1;
        int value = rand() % 100 + 1;
        if(op == 1){
            cout << op << " " << key << endl;
        }else{
            cout << op << " " << key << " " << value << endl;
        }
    }
    return 0;
}
