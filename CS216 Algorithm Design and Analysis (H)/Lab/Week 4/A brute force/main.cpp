#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main() {
    int N, M, T;
    int current_time = 0, number_of_active_keys = 0;
    int values[20005], update_time[20005], freq[20005];
    bool is_active[20005];
    cin >> N >> M >> T;
    for (int i = 0; i < M; ++i) {
        current_time++;
        for (int j = 0; j < 20005; ++j) {
            if (is_active[j] && current_time - update_time[j] > T) {
                is_active[j] = false;
                number_of_active_keys--;
            }
        }
        int op, key, value;
        cin >> op >> key;
        if(op == 1){
            if(is_active[key]){
                cout << values[key] << endl;
                freq[key]++;
                update_time[key] = current_time;
            }else{
                cout << -1 << endl;
            }
        }else{
            cin >> value;
            if(is_active[key]){
                values[key] = value;
                freq[key]++;
                update_time[key] = current_time;
            }else{
                if(number_of_active_keys == N){
                    int min_freq = 1000000000;
                    for (int j = 0; j < 20005; ++j) {
                        if(is_active[j]){
                            min_freq = min(min_freq, freq[j]);
                        }
                    }
                    int min_time = 1000000000, key = -1;
                    for (int j = 0; j < 20005; ++j) {
                        if(is_active[j] && freq[j] == min_freq){
                            if(update_time[j] < min_time){
                                min_time = update_time[j];
                                key = j;
                            }
                        }
                    }
                    is_active[key] = false;
                    number_of_active_keys--;
                }
                values[key] = value;
                freq[key] = 1;
                update_time[key] = current_time;
                is_active[key] = true;
                number_of_active_keys++;
            }
        }
    }
    vector<pair<int, int>> active_keys;
    for (int j = 0; j < 20005; ++j) {
        if(is_active[j]){
            active_keys.push_back({update_time[j], values[j]});
        }
    }
    sort(active_keys.begin(), active_keys.end(), std::greater<pair<int, int>>());
    if(active_keys.empty()){
        cout << "empty" << endl;
        return 0;
    }
    for (int j = 0; j < active_keys.size(); ++j) {
        cout << active_keys[j].second << " ";
    }
    return 0;
}
