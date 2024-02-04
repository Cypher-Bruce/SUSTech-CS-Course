#include <iostream>
#include <string>
using namespace std;
template <class T1,class T2>
class Pair
{

    T1 key;
    T2 value;
    public:
    Pair(T1 k,T2 v):key(k),value(v) { };
    bool operator < (const Pair<T1,T2> & p) const;
    friend ostream & operator << (ostream & o,const Pair<T1,T2> & p);
};

template <class T1,class T2>
bool Pair<T1,T2> :: operator< (const Pair<T1,T2> & p) const
{
    return key < p.key;
}

template <class T1,class T2>
ostream & operator << (ostream & o,const Pair<T1,T2> & p)
{
    o << p.key << " : " << p.value;
    return o;
}