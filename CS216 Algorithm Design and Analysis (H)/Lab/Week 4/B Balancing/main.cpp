#include <iostream>

using namespace std;

string start_pos;
string end_pos = "111110111100*110000100000";
int max_depth = 0;
int move_x[] = {2, -2, 2, -2, 1, -1, 1, -1};
int move_y[] = {1, 1, -1, -1, 2, 2, -2, -2};

int hFunction(string pos){
    int h = 0;
    for (int i = 0; i < pos.length(); i++) {
        if(pos[i] == '*'){
            continue;
        }
        if(pos[i] != end_pos[i]){
            h++;
        }
    }
    return h;
}

bool dfs(int prev, int depth){
    if (start_pos == end_pos) {
        return true;
    }
    if (depth + hFunction(start_pos) > max_depth) {
        return false;
    }
    int pos = start_pos.find('*');
    int x = pos / 5;
    int y = pos % 5;
    for (int i = 0; i < 8; i++) {
        int new_x = x + move_x[i];
        int new_y = y + move_y[i];
        if (new_x >= 0 && new_x < 5 && new_y >= 0 && new_y < 5 && new_x * 5 + new_y != prev) {
            swap(start_pos[pos], start_pos[new_x * 5 + new_y]);
            if (dfs(pos, depth + 1)) {
                return true;
            }
            swap(start_pos[pos], start_pos[new_x * 5 + new_y]);
        }
    }
    return false;
}

int main() {
    int T;
    cin >> T;
    while (T--) {
        start_pos = "";
        max_depth = 0;
        for (int i = 0; i < 5; ++i) {
            string s;
            cin >> s;
            start_pos += s;
        }
        while (true) {
            if (dfs(-1, 0)) {
                cout << max_depth << endl;
                break;
            }
            max_depth++;
            if(max_depth > 15){
                cout << -1 << endl;
                break;
            }
        }
    }
    return 0;
}
