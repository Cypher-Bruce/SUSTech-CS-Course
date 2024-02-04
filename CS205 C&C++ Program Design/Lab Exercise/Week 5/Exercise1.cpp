#include<iostream>
using namespace std;

int main(){
    cout << "Enter word(to stop, type the word done): " << endl;
    string word;
    int count = 0;
    while(true){
        cin >> word;
        if(word == "done"){
            break;
        }
        count++;
    }
    if(!count){
        cout << "no word entered.";
    }else if(count == 1){
        cout << "You entered 1 word.";
    }else{
        cout << "You entered " << count << " words.";
    }
    return 0;
}