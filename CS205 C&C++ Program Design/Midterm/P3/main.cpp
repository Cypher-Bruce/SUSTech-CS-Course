#include <iostream>
using namespace std;
// Function for scalar multiplication
void multiply(int a, int b){
    cout << a*b << " ";
}

// Function for scalar and vector multiplication
void multiply(int a, int* b, int size){
    for (int i = 0; i < size; ++i) {
        cout << a*b[i] << " ";
    }
}

// Function for dot product of two vectors
void multiply(int* a, int* b, int size){
    int sum = 0;
    for (int i = 0; i < size; ++i) {
        sum += a[i]*b[i];
    }
    cout << sum << " ";
}


int main() {
    char typeA, typeB;
    int scalarA, scalarB, sizeA, sizeB;
    int *vectorA = nullptr, *vectorB = nullptr;


    cin >> typeA;
    if (typeA == 'S') {
        cin >> scalarA;
    } else if (typeA == 'V') {
        cin >> sizeA;
        vectorA = new int[sizeA];
        for (int i = 0; i < sizeA; ++i) {
            cin >> vectorA[i];
        }
    }

    cin >> typeB;
    if (typeB == 'S') {
        cin >> scalarB;
    } else if (typeB == 'V') {
        cin >> sizeB;
        vectorB = new int[sizeB];
        for (int i = 0; i < sizeB; ++i) {
            cin >> vectorB[i];
        }
    }

    // Perform multiplication based on types of A and B
    if (typeA == 'S' && typeB == 'S') {
        multiply(scalarA, scalarB);
    } else if (typeA == 'S' && typeB == 'V') {
        multiply(scalarA, vectorB, sizeB);
    } else if (typeA == 'V' && typeB == 'S') {
        multiply(scalarB, vectorA, sizeA);
    } else if (typeA == 'V' && typeB == 'V' && sizeA == sizeB) {
        multiply(vectorA, vectorB, sizeA);
    } else {
        cout << "Invalid input or mismatched dimensions" << std::endl;
    }

    // Clean up dynamically allocated memory
    delete[] vectorA;
    delete[] vectorB;

    return 0;
}