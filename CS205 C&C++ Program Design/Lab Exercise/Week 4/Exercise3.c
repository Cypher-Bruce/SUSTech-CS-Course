#include <stdio.h>
int main()
{
int aa[2][5] = { 1,2,3,4,5,6,7,8,9,10 };
int* paa1 = (int*)(&aa + 1);
int* paa2 = (int*)(*(aa + 1));
printf("%d,%d\n", *(paa1 - 1), *(paa2 - 1));

char* str[] = { "work","at","alibaba" };
char** ps = str;
ps++;
printf("%s\n", *ps);

return 0;
}

