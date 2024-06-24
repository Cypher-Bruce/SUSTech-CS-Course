#include <iostream>

using namespace std;

string start_pos, end_pos;
int max_depth = 0;
int move_x[] = {1, -1, 0, 0};
int move_y[] = {0, 0, 1, -1};

int hFunction(string pos) {
    int h = 0;
    for (int i = 0; i < pos.length(); i++) {
        if(pos[i] == '0'){
            continue;
        }
        int tar_pos = end_pos.find(pos[i]);
        h += abs(i/3 - tar_pos/3) + abs(i%3 - tar_pos%3);
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
    int pos = start_pos.find('0');
    int x = pos / 3;
    int y = pos % 3;
    for (int i = 0; i < 4; i++) {
        int new_x = x + move_x[i];
        int new_y = y + move_y[i];
        if (new_x >= 0 && new_x < 3 && new_y >= 0 && new_y < 3 && new_x * 3 + new_y != prev) {
            swap(start_pos[pos], start_pos[new_x * 3 + new_y]);
            if (dfs(pos, depth + 1)) {
                return true;
            }
            swap(start_pos[pos], start_pos[new_x * 3 + new_y]);
        }
    }
    return false;
}

int main() {
    cin >> start_pos;
    end_pos = "123804765";
    while (!dfs(-1, 0)) {
        max_depth++;
    }
    cout << max_depth << endl;
    return 0;
}
