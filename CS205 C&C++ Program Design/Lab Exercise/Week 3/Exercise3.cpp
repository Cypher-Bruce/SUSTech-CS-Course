#include<iostream>
using namespace std;

struct CandyBar
{
    char name[20];
    float weight;
    int calories;
};

int main(){

    CandyBar candybars[3];
    cout<<"Please input three candybars' information:"<<endl;
    cout<<"Enter brand name of a candy bar: ";
    cin.getline(candybars[0].name,20);
    cout<<"Enter weight of the candy bar: ";
    cin>>candybars[0].weight;
    cout<<"Enter calories (an integer value) in the candy bar: ";
    cin>>candybars[0].calories;
    
    cin.get();
    cout<<"Enter brand name of a candy bar: ";
    cin.getline(candybars[1].name,20);
    cout<<"Enter weight of the candy bar: ";
    cin>>candybars[1].weight;
    cout<<"Enter calories (an integer value) in the candy bar: ";
    cin>>candybars[1].calories;

    cin.get();
    cout<<"Enter brand name of a candy bar: ";
    cin.getline(candybars[2].name,20);
    cout<<"Enter weight of the candy bar: ";
    cin>>candybars[2].weight;
    cout<<"Enter calories (an integer value) in the candy bar: ";
    cin>>candybars[2].calories;

    cout<<"Display the candybar array contents:"<<endl;
    cout<<"Brand name: "<<candybars[0].name<<endl;
    cout<<"Weight: "<<candybars[0].weight<<endl;
    cout<<"Calories: "<<candybars[0].calories<<endl;
    cout<<"Brand name: "<<candybars[1].name<<endl;
    cout<<"Weight: "<<candybars[1].weight<<endl;
    cout<<"Calories: "<<candybars[1].calories<<endl;
    cout<<"Brand name: "<<candybars[2].name<<endl;
    cout<<"Weight: "<<candybars[2].weight<<endl;
    cout<<"Calories: "<<candybars[2].calories<<endl;

    cout<<"The greatest calories per weight is: "<<endl;
    if(candybars[0].calories/candybars[0].weight>candybars[1].calories/candybars[1].weight){
        if(candybars[0].calories/candybars[0].weight>candybars[2].calories/candybars[2].weight){
            cout<<"Brand name: "<<candybars[0].name<<endl;
            cout<<"Calories per weight: "<<candybars[0].calories/candybars[0].weight<<endl;
        }
        else{
            cout<<"Brand name: "<<candybars[2].name<<endl;
            cout<<"Calories per weight: "<<candybars[2].calories/candybars[2].weight<<endl;
        }
    }
    else{
        if(candybars[1].calories/candybars[1].weight>candybars[2].calories/candybars[2].weight){
            cout<<"Brand name: "<<candybars[1].name<<endl;
            cout<<"Calories per weight: "<<candybars[1].calories/candybars[1].weight<<endl;
        }
        else{
            cout<<"Brand name: "<<candybars[2].name<<endl;
            cout<<"Calories per weight: "<<candybars[2].calories/candybars[2].weight<<endl;
        }
    }

    return 0;
}