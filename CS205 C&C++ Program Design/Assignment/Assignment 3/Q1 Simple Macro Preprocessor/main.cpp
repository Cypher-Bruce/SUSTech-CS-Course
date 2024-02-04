#include<iostream>
using namespace std;

string parameter[1000][2];
int parameter_num = 0;
string function_name[1000];
string function_prototype[1000];
string function_body[1000];
int function_parameter_num[1000];
int function_num = 0;

int main(){
    freopen ("input.txt","r",stdin);
    freopen ("output.txt","w",stdout);

    string S;
    string buffer[1000];
    int buffer_cnt = 0;
    bool contentInput = false;
    while(getline(cin, S)) {
        if (S[0] == '#' && S[1] == 'd') {
            if(contentInput){
                buffer_cnt++;
                contentInput = false;
            }
            buffer[buffer_cnt] = S + " ";
            buffer_cnt++;
        }else if(S[0] == '#' && S[1] == 'u'){
            if(contentInput){
                buffer_cnt++;
                contentInput = false;
            }
            buffer[buffer_cnt] = S;
            buffer_cnt++;
        }else{
            buffer[buffer_cnt] = buffer[buffer_cnt] + S + " ";
            contentInput = true;
        }
    }
    if(contentInput){
        buffer_cnt++;
    }
    for (int t = 0; t < buffer_cnt; t++) {
        S = buffer[t];
        if(S.length() >= 8 && S.substr(0, 8) == "#define "){
            int space = 8;
            while(S[space] != ' '){
                space++;
            }
            string origin = S.substr(8, space - 8);
            if(origin[origin.length() - 1] != '('){
                for (int i = 0; i < parameter_num; i++){
                    if(parameter[i][0] == origin){
                        cout << "ERROR DUP";
                        return 0;
                    }
                }
                parameter[parameter_num][0] = origin;
                parameter[parameter_num][1] = S.substr(space + 1, S.length() - space - 1);
                parameter_num++;
            }else{
                int leftParen = 0;
                int rightParen = 0;
                int end = 0;
                string name, prototype, body;
                int para = 0;
                for (int i = 0; i < S.length(); i++){
                    if(S[i] == '('){
                        leftParen++;
                    }else if(S[i] == ')'){
                        rightParen++;
                        if(leftParen == rightParen){
                            para++;
                            end = i;
                            break;
                        }
                    }else if(S[i] == ',' && leftParen == rightParen + 1){
                        para++;
                    }
                }
                name = S.substr(8, space - 8);
                prototype = S.substr(space, end - space);
                body = S.substr(end + 1, S.length() - end - 1);

                for (int i = 0; i < function_num; i++){
                    if(function_name[i] == name && function_parameter_num[i] == para){
                        cout << "ERROR DUP";
                        return 0;
                    }
                }

                function_name[function_num] = name;
                function_prototype[function_num] = prototype;
                function_body[function_num] = body;
                function_parameter_num[function_num] = para;
                function_num++;
            }

        }else if(S.length() >= 7 && S.substr(0, 7) == "#undef "){
            int space = 7;
            while(S[space] != ' ' && space < S.length()){
                space++;
            }
            string origin = S.substr(7, space - 7);
            if(origin[origin.length() - 1] != '('){
                bool flag = false;
                for (int i = 0; i < parameter_num; i++){
                    if(parameter[i][0] == origin){
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
                int leftParen = 0;
                int rightParen = 0;
                string name;
                int para = 0;
                for (int i = 0; i < S.length(); i++){
                    if(S[i] == '('){
                        leftParen++;
                    }else if(S[i] == ')'){
                        rightParen++;
                        if(leftParen == rightParen){
                            para++;
                            break;
                        }
                    }else if(S[i] == ',' && leftParen == rightParen + 1){
                        para++;
                    }
                }
                name = origin;

                bool flag = false;
                for (int i = 0; i < function_num; i++){
                    if(function_name[i] == name && function_parameter_num[i] == para){
                        flag = true;
                        for (int j = i; j < function_num - 1; j++){
                            function_name[j] = function_name[j + 1];
                            function_body[j] = function_body[j + 1];
                            function_parameter_num[j] = function_parameter_num[j + 1];
                        }
                        function_num--;
                        break;
                    }
                }
                if(!flag){
                    cout << "ERROR NFOUND";
                    return 0;
                }
            }
        }else{
            while(true){
                int space = 0;
                while(S[space] != ' ' && space < S.length()){
                    space++;
                }
                string word = S.substr(0, space);

                if(word == ""){
                    if(space == S.length()){
                        cout << endl;
                        break;
                    }
                    S = S.substr(space + 1, S.length() - space - 1);
                    continue;
                }
                if(word[word.length()-1] != '(' || word == "("){
                    bool flag = false;
                    for (int i = 0; i < parameter_num; i++){
                        if(parameter[i][0] == word){
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
                    S = S.substr(space + 1, S.length() - space - 1);
                }else{
                    int end;
                    int leftParen = 0;
                    int rightParen = 0;
                    string name;
                    int para = 0;
                    for (int i = 0; i < S.length(); i++){
                        if(S[i] == '('){
                            leftParen++;
                        }else if(S[i] == ')'){
                            rightParen++;
                            if(leftParen == rightParen){
                                para++;
                                end = i;
                                break;
                            }
                        }else if(S[i] == ',' && leftParen == rightParen + 1){
                            para++;
                        }
                    }
                    name = word;

                    bool flag = false;
                    for (int i = 0; i < function_num; i++){
                        if(function_name[i] == name && function_parameter_num[i] == para){
                            flag = true;
                            string proto_ori = function_prototype[i];
                            string proto_new = S.substr(space, end - space);
                            string paraList[para][2];
                            leftParen = 0;
                            rightParen = 0;
                            para = 0;
                            int comma = -1;
                            for (int j = 0; j < proto_ori.length(); j++){
                                if(proto_ori[j] == '('){
                                    leftParen++;
                                }else if(proto_ori[j] == ')'){
                                    rightParen++;
                                }else if(proto_ori[j] == ',' && leftParen == rightParen){
                                    paraList[para][0] = proto_ori.substr(comma + 1, j - comma - 1);
                                    comma = j;
                                    para++;
                                }else if(j == proto_ori.length() - 1){
                                    paraList[para][0] = proto_ori.substr(comma + 1, j - comma);
                                }
                            }
                            leftParen = 0;
                            rightParen = 0;
                            para = 0;
                            comma = -1;
                            for (int j = 0; j < proto_new.length(); j++){
                                if(proto_new[j] == '('){
                                    leftParen++;
                                }else if(proto_new[j] == ')'){
                                    rightParen++;
                                }else if(proto_new[j] == ',' && leftParen == rightParen){
                                    paraList[para][1] = proto_new.substr(comma + 1, j - comma - 1);
                                    comma = j;
                                    para++;
                                }else if(j == proto_new.length() - 1){
                                    paraList[para][1] = proto_new.substr(comma + 1, j - comma);
                                }
                            }

                            string body = function_body[i];
                            for (int j = 0; j < body.length(); j++){
                                for (int k = 0; k < function_parameter_num[i]; k++){
                                    if(j + paraList[k][0].length() <= body.length() && body.substr(j, paraList[k][0].length()) == paraList[k][0]){
                                        body = body.replace(j, paraList[k][0].length(), paraList[k][1]);
                                        j += (int)paraList[k][1].length() - 1;
                                    }
                                }
                            }
                            cout << body << " ";
                            break;
                        }
                    }
                    if(!flag){
                        cout << S.substr(0, end + 1) << " ";
                    }

                    if(end == S.length() - 1){
                        cout << endl;
                        break;
                    }
                    S = S.substr(end + 1, S.length() - end - 1);
                }
            }
        }
    }
    return 0;
}