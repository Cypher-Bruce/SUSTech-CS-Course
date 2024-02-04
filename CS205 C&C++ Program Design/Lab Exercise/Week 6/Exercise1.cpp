#include <iostream>
using namespace std;
void Displaymenu()
{
    cout<< "\t\tMENU\n";
    cout<< "\t1. Add\n";
    cout<< "\t2. Substract\n";
    cout<< "\t3. Multiply\n";
    cout<< "\t4. Divide\n";
    cout<< "\t5. Modulus\n";
}
int Add(int a, int b)
{
    return a+b;
}
int Substract(int a, int b)
{
    return a-b;
}
int Multiply(int a, int b)
{
    return a*b;
}
int Divide(int a, int b)
{
    return a/b;
}
int Modulus(int a, int b)
{
    return a%b;
}

int main(){
    Displaymenu();
    int yourChoice;
    int a,b;
    char confirm;
    do{
        cout<< "Enter your choice(1-5): ";
        cin>> yourChoice;
        cout<< "Enter your integer numbers: ";
        cin>> a>> b;
        cout<< "\n";
        switch (yourChoice)
        {
            case 1:
                cout<< "Result: "<< Add(a,b)<< endl;
                break;
            case 2:
                cout<< "Result: "<< Substract(a,b)<< endl;
                break;
            case 3:
                cout<< "Result: "<< Multiply(a,b)<< endl;
                break;
            case 4:
                cout<< "Result: "<< Divide(a,b)<< endl;
                break;
            case 5:
                cout<< "Result: "<< Modulus(a,b)<< endl;
                break;
            default:
                cout<< "Invalid choice!\n";
                break;
        }
        cout<< "Do you want to continue (Y/N): ";
        cin>> confirm;
    }while (confirm == 'y' || confirm == 'Y');

    cout<< "Done.\n";

    return 0;
}