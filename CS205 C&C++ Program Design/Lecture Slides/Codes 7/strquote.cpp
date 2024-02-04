// strquote.cpp -- different designs
#include <iostream>
#include <string>
using namespace std;
string version1(const string & s1, const string & s2);
const string & version2(string & s1, const string & s2); // has side effect
const string & version3(string & s1, const string & s2); // bad design

int main()
{
//it is my fault

    string input;
    string copy;
    string result;
    cout << "Enter a string: ";
    getline(cin, input);
    copy = input;
    cout << "Your string as entered: " << input << endl;
    
    result = version1(input, "***");
    cout << "Your string enhanced: " << result << endl;
    cout << "Your original string: " << input << endl;
    
    char temp_cha = '#';
    char * chr_p = &temp_cha;
    result = version2(input, chr_p);
    cout << "\nYour string enhanced: " << result << endl;
    cout << "Your original string: " << input << endl;
    
    cout << "\nResetting original string.\n";
    input = copy;
    
    char arr[]= "!!!";
    result = version3(input, arr);
    cout << "Your string enhanced: " << result << endl;
    cout << "Your original string: " << input << endl;
    
    return 0;
}

string version1(const string & s1, const string & s2)
{
    string temp;
    temp = s2 + s1 + s2;
    return temp;
}

const string & version2(string & s1, const string & s2) // has side effect
{
    s1 = s2 + s1 + s2;
    // safe to return reference passed to function
    return s1;
}
const string & version3(string & s1, const string & s2) // bad design
{
    string temp;
    temp = s2 + s1 + s2;
    // unsafe to return reference to local variable
    return temp;
}