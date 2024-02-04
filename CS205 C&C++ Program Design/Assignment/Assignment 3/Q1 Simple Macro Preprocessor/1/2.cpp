#include<iostream>
#include<cstring>
using namespace std;

string parameter[100][2];
int parameter_num = 0;

int main(){
    string S;
    
    while(getline(cin, S)){
        if(S.length() >= 8 && S.substr(0, 8).compare("#define ") == 0){
            int space = 8;
            while(S[space] != ' '){
                space++;
            }
            string origin = S.substr(8, space - 8);
            if(origin[origin.length() - 1] != '('){
                for (int i = 0; i < parameter_num; i++){
                    if(parameter[i][0].compare(origin) == 0){
                        cout << "ERROR DUP";
                        return 0;
                    }
                }
                parameter[parameter_num][0] = origin;
                parameter[parameter_num][1] = S.substr(space + 1, S.length() - space - 1);
                parameter_num++;
            }else{

            }
            
        }else if(S.length() >= 7 && S.substr(0, 7).compare("#undef ") == 0){
            string origin = S.substr(7, S.length() - 7);
            if(origin[origin.length() - 1] != '('){
                bool flag = false;
                for (int i = 0; i < parameter_num; i++){
                    if(parameter[i][0].compare(origin) == 0){
                        flag = true;
                        for (int j = i; j < parameter_num - 1; j++){
                            parameter[j][0] = parameter[j + 1][0];
                            parameter[j][1] = parameter[j + 1][1];
                        }
                        parameter_num--;
                        break;
                    }
                }
                if(!flag){
                    cout << "ERROR NFOUND";
                    return 0;
                }
            }else{
                    
            }
        }else{
            while(true){
                int space = 0;
                while(S[space] != ' ' && space < S.length()){
                    space++;
                }
                string word = S.substr(0, space);

                if(word[word.length()-1] != '('){
                    bool flag = false;
                    for (int i = 0; i < parameter_num; i++){
                        if(parameter[i][0].compare(word) == 0){
                            flag = true;
                            cout << parameter[i][1] << " ";
                            break;
                        }
                    }
                    if(!flag){
                        cout << word << " ";
                    }

                    if(space == S.length()){
                        cout << endl;
                        break;
                    }
                }else{

                }
                
                S = S.substr(space + 1, S.length() - space - 1);
            }
        }
    }
    return 0;
}