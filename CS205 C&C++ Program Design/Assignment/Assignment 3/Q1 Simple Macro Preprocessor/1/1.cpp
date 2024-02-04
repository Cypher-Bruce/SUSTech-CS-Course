#include<iostream>
#include<cstdio>
#include<vector>
#include<string>

using namespace std;

struct def {
    string name;
    string value;
};
struct padef {
    string name;
    vector<string> params;
    string func;
};
vector<string> lines;
vector<def> d;
vector<padef> p;

string trim(string s) {
    int i = 0;
    while (s[i] == ' ') {
        i++;
    }
    int j = s.size() - 1;
    while (s[j] == ' ') {
        j--;
    }
    string temp;
    while (i <= j) {
        temp += s[i];
        i++;
    }
    return temp;
}

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    string line;
    while (getline(cin, line)) {
        lines.push_back(line);
        // second param is length of string
        if (line.substr(0, 6) == "#undef") {
            bool hasDef = false;
            if (line.find('(') != string::npos) {
                string name;
                vector<string> params;
                int j = 7;
                while (line[j] != '(') {
                    name += line[j];
                    j++;
                }
                name = trim(name);
                j++;
                bool isGoing = true;
                while (isGoing) {
                    string temp;
                    int cnt = 0;
                    while (line[j] != ',' || cnt != 0) {
                        temp += line[j];
                        j++;
                        if (line[j] == '(') cnt++;
                        if (line[j] == ')') {
                            cnt--;
                            if (cnt < 0) {
                                isGoing = false;
                                break;
                            }
                        }
                    }
                    params.push_back(trim(temp));
                    j++;
                }
                for (j = 0; j < p.size(); j++) {
                    if (p[j].name == name) {
                        if (p[j].params.size() == params.size()) {
                            p.erase(p.begin() + j);
                            hasDef = true;
                            break;
                        }
                    }
                }
            } else {
                string name;
                int j = 7;
                while (j < line.length()) {
                    name += line[j];
                    j++;
                }
                name = trim(name);
                for (j = 0; j < d.size(); j++) {
                    if (d[j].name == name) {
                        d.erase(d.begin() + j);
                        hasDef = true;
                        break;
                    }
                }
            }
            if (!hasDef) {
                cout << "ERROR NFOUND";
                return 0;
            }
        } else if (line.substr(0, 7) == "#define") {
            if (line.find('(') == string::npos || line[line.find('(') - 1] == ' ') {

                string name, value;
                int j = 8;
                while (line[j] != ' ') {
                    name += line[j];
                    j++;
                }
                name = trim(name);
                j++;
                while (j < line.length()) {
                    value += line[j];
                    j++;
                }
                value = trim(value);
                def temp;
                temp.name = name;
                temp.value = value;
                for (auto &i: d) {
                    if (i.name == name) {
                        cout << "ERROR DUP";
                        exit(0);
                    }
                }
                d.push_back(temp);
            } else {
                string name;
                vector<string> params;
                string func;
                int j = 8;

                while (line[j] != '(') {
                    name += line[j];
                    j++;
                }
                name = trim(name);
                j++;
                bool isGoing = true;
                while (isGoing) {
                    string temp;
                    int cnt = 0;
                    while (line[j] != ',' || cnt != 0) {
                        temp += line[j];
                        j++;
                        if (line[j] == '(') cnt++;
                        if (line[j] == ')') {
                            cnt--;
                            if (cnt < 0) {
                                isGoing = false;
                                break;
                            }
                        }
                    }
                    params.push_back(trim(temp));
                    j++;
                }
                std::sort(params.begin(), params.end(), [](const string &a, const string &b) {
                    return a.length() < b.length();
                });
                j++;
                while (j < line.length()) {
                    func += line[j];
                    j++;
                }
                padef temp;
                temp.name = name;
                temp.params = params;
                temp.func = func;
                for (auto &i: p) {
                    if (i.name != name) continue;
                    if (i.params.size() != params.size()) continue;
                    cout << "ERROR DUP";
                    exit(0);
                }
                p.push_back(temp);
            }
        } else {
            vector<string> groups;
            string temp;
            int cnt0 = 0;
            for (int j = 0; j < line.size(); j++) {
                temp += line[j];
                if (line[j] == '(' && line[j + 1] == ' ')cnt0++;
                else if (line[j] == ')' && line[j - 1] == ' ') {
                    cnt0--;
                }
                if (line[j] == ' ' && cnt0 <= 0) {
                    if (temp[0] != '(') {
                        groups.push_back(trim(temp));
                        temp = "";
                        continue;
                    }

                    string tmp1 = trim(temp);
                    while (tmp1[0] == '(' && tmp1.length() > 1 && tmp1[1] == ' ') {
                        tmp1 = trim(trim(tmp1).substr(1, trim(tmp1).length() - 1));
                        groups.emplace_back("(");
                    }
                    vector<string> tmp2;
                    while (tmp1[tmp1.length() - 1] == ')' && tmp1.length() > 1 && tmp1[tmp1.length() - 2] == ' ') {
                        tmp1 = trim(trim(tmp1).substr(0, trim(tmp1).length() - 1));
                        tmp2.emplace_back(")");
                    }
                    string tmp3;
                    for (int k = 0; k < tmp1.size(); k++) {
                        if (tmp1[k] == ' ') {
                            groups.push_back(trim(tmp3));
                            tmp3 = "";
                        } else {
                            tmp3 += tmp1[k];
                        }
                    }
                    if (trim(tmp3).length() != 0)
                        groups.push_back(trim(tmp3));
                    for (int k = 0; k < tmp2.size(); k++) {
                        groups.push_back(tmp2[k]);
                    }
                    temp = "";
                }
            }
            if (trim(temp).length() != 0) {
                if (temp[0] != '(') {
                    groups.push_back(trim(temp));
                    temp = "";
                }

                string tmp1 = trim(temp);
                while (tmp1[0] == '(' && tmp1.length() > 1 && tmp1[1] == ' ') {
                    tmp1 = trim(trim(tmp1).substr(1, trim(tmp1).length() - 1));
                    groups.emplace_back("(");
                }
                vector<string> tmp2;
                while (tmp1[tmp1.length() - 1] == ')' && tmp1.length() > 1 && tmp1[tmp1.length() - 2] == ' ') {
                    tmp1 = trim(trim(tmp1).substr(0, trim(tmp1).length() - 1));
                    tmp2.emplace_back(")");
                }
                string tmp3;
                for (int k = 0; k < tmp1.size(); k++) {
                    if (tmp1[k] == ' ') {
                        groups.push_back(trim(tmp3));
                        tmp3 = "";
                    } else {
                        tmp3 += tmp1[k];
                    }
                }
                if (trim(tmp3).length() != 0)
                    groups.push_back(trim(tmp3));
                for (int k = 0; k < tmp2.size(); k++) {
                    groups.push_back(tmp2[k]);
                }
            }
            for (int i = 0; i < groups.size(); i++) {
                //cout << groups[i] << endl;
                for (int j = 0; j < d.size(); j++) {
                    if (groups[i] == d[j].name)
                        groups[i] = d[j].value;
                }
            }
            line = "";
            for (int i = 0; i < groups.size(); i++) {
                line += groups[i];
                if (i != groups.size() - 1)
                    line += " ";
            }
            //cout << line << endl;

            for (int j = 0; j < p.size(); j++) {
                string tn, tp;
                for (int k = 0; k < line.length() - p[j].name.length(); k++) {
                    if (line.find('(') == string::npos) break;
                    if (k > 0)
                        if (line[k - 1] != ' ') continue;
                    if (k + p[j].name.length() >= line.length()) break;
                    tn = line.substr(k, p[j].name.length());
                    if (tn == p[j].name) {
                        int starting = k + p[j].name.length() + 1;
                        //cout << "START" << line[starting] << endl;
                        int finishing = starting;
                        int cnt = 0;
                        if (line.size() <= starting) break;
                        for (int l = starting; l < line.length(); l++) {
                            if (line[l] == '(') cnt++;
                            if (line[l] == ')') {
                                cnt--;
                                if (cnt < 0) {
                                    finishing = l;
                                    break;
                                }
                            }
                        }
                        //if (finishing == starting) finishing = line.length() - 1;
                        tp = trim(line.substr(starting, finishing - starting));
                        if (tp == trim(line)) continue;
                        //cout << k << " " << tp << endl;
                        if (tp.length() == 0) continue;
                        vector<string> params;
                        string temp;
                        cnt = 0;
                        for (int l = 0; l < tp.length(); l++) {
                            if (tp[l] == '(')cnt++;
                            if (tp[l] == ')')cnt--;
                            if (tp[l] == ',' && cnt == 0) {
                                params.push_back(trim(temp));
                                temp = "";
                            } else {
                                temp += tp[l];
                            }
                        }
                        params.push_back(trim(temp));
                        for (int l = 0; l < params.size(); l++) cout << "PA" << l << " " << params[l] << endl;
                        if (params.size() != p[j].params.size()) continue;
                        else {
                            string temp2 = trim(p[j].func);
                            for (int l = 0; l < params.size(); l++) {
                                for (int m = 0; m < temp2.length(); m++) {
                                    if (m > 0) if (temp2[m - 1] != ' ') continue;
                                    bool isSame = true;
                                    for (int o = 0; o < p[j].params[l].length(); o++) {
                                        if (temp2[m + o] != p[j].params[l][o]) {
                                            isSame = false;
                                            break;
                                        }
                                    }
                                    if (temp2.length() > m + p[j].params[l].length()) {
                                        if (temp2[m + p[j].params[l].length()] != ' ')
                                            isSame = false;
                                    }
                                    if (isSame) {
                                        temp2.replace(m, p[j].params[l].length(), params[l]);
                                        m += params[l].length();
                                    }
                                }
                            }
                            cout << "TEMP2" << temp2 << endl;
                            line.replace(k, finishing - k + 1, temp2);
                            k += temp2.length();
                        }
                    }
                }
            }
            cout << line << endl;
        }
    }
}
/*
 * #define k( a ) a * aa
 * k( l )
 *
 * #define k( a ) a * aa
 * mk( l )
 *
 * #define k( ()() ) ()() | () | ()()()
 * k( l )
 *
 * #define mul c
 * (mul mul (mul) ( mul )
 *
 * #define mul c
 * #define mul( a ) a * a
 * mul( mul ) mul ( mul )
 *
 * #define q (
 *
 * #define mul c
 * #define mul( a ) a * a
 * mul( mul( mul( a ) ) )
 *
 * #define mul( a ) a * a
 * #define mul c
 * mul( mul ) mul ( mul )
 *
 * #define mul( a , b ) a * b
 * #define mul( a ) a * a
 * #define mul c
 * mul( mul , mul ) mul
 *
 * #define mul( a ) a * a
 * #define mul( a , b ) a * b
 * #define mul c
 * mul( mul , mul ) mul
 *
 * #define mul( a , b ) a * b
 * mul( ( a , b ) , c )
 */