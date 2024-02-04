#include <iostream>
using namespace std;
int main()
{
int a[][4]={1,3,5,7,9,11,13,15,17,19};
int *p=*(a+1);
p += 3;
cout << "*p++ = " << *p++ << ",*p = " << *p << endl;

const char *pc = "Welcome to programming.", *r;
long *q = (long *)pc;
q++;
r = (char *)q;

cout << r << endl;

unsigned int m = 0x3E56AF67;
unsigned short *pm = (unsigned short *) &m;

cout << "*pm = " << hex << *pm << endl;

return 0;
}
