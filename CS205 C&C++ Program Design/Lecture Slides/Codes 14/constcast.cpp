// constcast.cpp -- using const_cast<>
#include <iostream>
using std::cout;
using std::endl;
void change(const int * pt, int n);
int main()
{
    int pop1 = 38383;
    //int i = 2000;
    //const int pop2 = i; // 
    
    //const int pop2 = 2000; // The compiler may protect it from any change
    cout << "pop1, pop2: " << pop1 << ", " << pop2 << endl;
    
    change(&pop1, -103);
    change(&pop2, -103);
    cout << "pop1, pop2: " << pop1 << ", " << pop2 << endl;
    
    return 0;
}
void change(const int * pt, int n)
{
    int * pc;
    pc = const_cast<int *>(pt);
    *pc += n;
}
