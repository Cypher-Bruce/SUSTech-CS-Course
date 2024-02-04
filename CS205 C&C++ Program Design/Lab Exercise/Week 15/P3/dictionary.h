#include <iostream>
using namespace std;
template <class Key, class Value>
class Dictionary {
    Key* keys;
    Value* values;
    int size;
    int max_size;
public:
Dictionary(int initial_size) : size(0) {
    max_size = 1;
    while (initial_size >= max_size)
    max_size *= 2;
    keys = new Key[max_size];
    values = new Value[max_size];
}
void add(Key key, Value value) {
    Key* tmpKey;
    Value* tmpVal;
    if (size + 1 >= max_size) {
        max_size *= 2;
        tmpKey = new Key [max_size];
        tmpVal = new Value [max_size];
        for (int i = 0; i < size; i++) {
            tmpKey[i] = keys[i];
            tmpVal[i] = values[i];
        }
        tmpKey[size] = key;
        tmpVal[size] = value;
        delete[] keys;
        delete[] values;
        keys = tmpKey;
        values = tmpVal;
    }
    else {
        keys[size] = key;
        values[size] = value;
    }
    size++;
}
void print() {
    for (int i = 0; i < size; i++)
    cout << "{" << keys[i] << ", " << values[i] << "}" << endl;
}
~Dictionary()
{
    delete[] keys;
    delete[] values;
}
};

template <class Value>
class Dictionary<int, Value> {
    int* keys;
    Value* values;
    int size;
    int max_size;
public:
Dictionary(int initial_size) : size(0) {
    max_size = 1;
    while (initial_size >= max_size)
    max_size *= 2;
    keys = new int[max_size];
    values = new Value[max_size];
}
void add(int key, Value value) {
    int* tmpKey;
    Value* tmpVal;
    if (size + 1 >= max_size) {
        max_size *= 2;
        tmpKey = new int [max_size];
        tmpVal = new Value [max_size];
        for (int i = 0; i < size; i++) {
            tmpKey[i] = keys[i];
            tmpVal[i] = values[i];
        }
        tmpKey[size] = key;
        tmpVal[size] = value;
        delete[] keys;
        delete[] values;
        keys = tmpKey;
        values = tmpVal;
    }
    else {
        keys[size] = key;
        values[size] = value;
    }
    size++;
}
void print() {
    for (int i = 0; i < size; i++)
    cout << "{" << keys[i] << ", " << values[i] << "}" << endl;
}
void sort() {
    int tmpKey;
    Value tmpVal;
    for (int i = 0; i < size; i++) {
        for (int j = i; j < size; j++) {
            if (keys[i] > keys[j]) {
                tmpKey = keys[i];
                tmpVal = values[i];
                keys[i] = keys[j];
                values[i] = values[j];
                keys[j] = tmpKey;
                values[j] = tmpVal;
            }
        }
    }
}
~Dictionary()
{
    delete[] keys;
    delete[] values;
}
};
