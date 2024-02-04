#include<iostream>
using namespace std;

int main(){
    cout << "Enter words(q to quit): " << endl;
    string word;
    int vowelCount = 0;
    int consonantCount = 0;
    int otherCount = 0;
    while(true){
        cin >> word;
        if(word == "q"){
            break;
        }
        if(isalpha(word[0])){
            switch(word[0]){
                case 'a':
                case 'e':
                case 'i':
                case 'o':
                case 'u':
                case 'A':
                case 'E':
                case 'I':
                case 'O':
                case 'U':
                    vowelCount++;
                    break;
                default:
                    consonantCount++;
                    break;
            }
        }else{
            otherCount++;
        }
    }
    if(vowelCount <= 1){
        cout << vowelCount << " word begins with vowel" << endl;
    }else{
        cout << vowelCount << " words begin with vowel" << endl;
    }
    if(consonantCount <= 1){
        cout << consonantCount << " word begins with consonant" << endl;
    }else{
        cout << consonantCount << " words begin with consonant" << endl;
    }
    cout << otherCount << " others" << endl;
    return 0;
}