#include <iostream>
#include <string.h>
using namespace std;
int main()
{
int cards[4]{};
int price[] = {2,3,5,9,-1};
char direction[4] {'L',82,'U',68};
char title[] = "ChartGPT is an awesome tool.";
cout << "sizeof(cards) = " << sizeof(cards) << ",sizeof of cards[0] = " << sizeof(cards[0]) << endl;
cout << "sizeof(price) = " << sizeof(price) << ",sizeof of price[0] = " << sizeof(price[1]) << endl;
cout << "sizeof(direction) = " << sizeof(direction) << ",length of direction = " << strlen(direction) << endl;
cout << "sizeof(title) = " << sizeof(title) << ",length of title = " << strlen(title) << endl;

cout<< &cards <<endl;
cout<< &price <<endl;
cout<< &direction <<endl;
cout<< &title <<endl;
return 0;
}
