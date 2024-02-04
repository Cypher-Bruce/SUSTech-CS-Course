#include <iostream>
#include "dictionary.h"

using namespace std;

int main()
{
Dictionary<const char*, const char*> dict(10);
dict.print();
dict.add("apple", "fruit");
dict.add("banana", "fruit");
dict.add("dog", "animal");
dict.print();
Dictionary<int, const char*> dict_specialized(10);
dict_specialized.print();
dict_specialized.add(100, "apple");
dict_specialized.add(101, "banana");
dict_specialized.add(103, "dog");
dict_specialized.add(89, "cat");
dict_specialized.print();
dict_specialized.sort();
cout << endl << "Sorted list:" << endl;
dict_specialized.print();
return 0;
}