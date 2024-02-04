#include<iostream>
#include<cstring>
using namespace std;

struct stringy
{
    char * str;
    int ct;
};

void set(stringy & beany, char * str);
void show(const stringy & beany, int n = 1);
void show(const char * str, int n = 1);

int main(){
    stringy beany;
    char testing[] = "Reality isn't what it used to be.";

    set(beany, testing);

    show(beany);
    show(beany, 2);

    testing[0] = 'D';
    testing[1] = 'u';
    show(testing);
    show(testing, 3);
    show("Done!");

    delete [] beany.str;

    return 0;
}

void set(stringy & beany, char * str){
    beany.ct = strlen(str);
    beany.str = new char[beany.ct + 1];
    strcpy(beany.str, str);
}

void show(const stringy & beany, int n){
    for(int i = 0; i < n; i++){
        cout << beany.str << endl;
    }
}

void show(const char * str, int n){
    for(int i = 0; i < n; i++){
        cout << str << endl;
    }
}