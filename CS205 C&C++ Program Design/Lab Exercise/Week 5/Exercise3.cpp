#include<iostream>
#include<algorithm>
#include<fstream>
using namespace std;

int main(){
    cout << "Please input a string: " << endl;
    string sentence, sentence_upper;
    getline(cin, sentence);
    for (int i = 0; i < sentence.length(); i++){
        if(!isalpha(sentence[i])){
            sentence[i] = ' ';
        }
    }
    sentence_upper = sentence;
    transform(sentence_upper.begin(), sentence_upper.end(), sentence_upper.begin(), ::toupper);

    fstream file1, file2;
    file1.open("f1.txt", ios::out|ios::in);
    file2.open("f2.txt", ios::out|ios::in);

    if(file1.is_open()){
        file1 << sentence;
        
        file1.clear();
        file1.seekg(0);

        cout << "The contents of f1.txt: ";
        string readLine;
        while(!file1.eof()){
            getline(file1, readLine);
            cout << readLine << endl;
        }

        file1.close();
    }else{
        cout << "Error opening file1" << endl;
    }

    if(file2.is_open()){
        file2 << sentence_upper;
        
        file2.clear();
        file2.seekg(0);

        cout << "The contents of f2.txt: ";
        string readLine;
        while(!file2.eof()){
            getline(file2, readLine);
            cout << readLine << endl;
        }

        file2.close();
    }else{
        cout << "Error opening file2" << endl;
    }
    return 0;
}