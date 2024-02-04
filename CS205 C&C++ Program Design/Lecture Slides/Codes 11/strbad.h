// strbad.h -- flawed string class definition
#include <iostream>
#ifndef STRNGBAD_H_
#define STRNGBAD_H_
class StringBad
{
    private:
    char * str; // pointer to string
    int len; // length of string
    static int num_strings; // number of objects
    
    public:
    StringBad(const char * s); // constructor
    StringBad(); // default constructor
    //StringBad(int n=10); // default constructor
    
    //StringBad(const StringBad & st); //copy constrctor

    ~StringBad(); // destructor
    // friend function
    friend std::ostream & operator<<(std::ostream & os, const StringBad & st);

    // member function
    //StringBad & operator=(const StringBad & st);

};
#endif
