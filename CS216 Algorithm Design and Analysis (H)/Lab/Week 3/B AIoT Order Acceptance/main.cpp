#include <iostream>
#include <vector>
#include <queue>
#include <cmath>

using namespace std;

struct Order{
    long long deadline;
    long long quota;
    long long profit;
    Order(long long d, long long q, long long p): deadline(d), quota(q), profit(p) {}
    bool operator<(const Order& o) const {
        return deadline < o.deadline;
    }
};

int main() {
    int n;
    cin >> n;
    vector<Order> orders;
    vector<Order> selected_order;
    for (int i = 0; i < n; i++) {
        long long d, q, p;
        cin >> d >> q >> p;
        orders.push_back(Order(d, q, p));
    }
    make_heap(orders.begin(), orders.end());
    sort_heap(orders.begin(), orders.end());

    long long max_profit = 0;
    for (int choice = 1; choice < (1 << n); choice++) {
        selected_order = vector<Order>();
        for (int i = 0; i < n; ++i) {
            if (choice & (1 << i)) {
                selected_order.push_back(orders[i]);
            }
        }
        bool valid = true;
        long long current_day = 0;
        long long current_productivity = 1;
        long long cars_ready = 0;

        for(int i = 0; i < selected_order.size(); i++) {
            long long max_interval;
            long long total_quota = -cars_ready;
            long long diverge_day = selected_order[i].deadline - current_day;
            for(int j = i; j < selected_order.size(); j++){
                max_interval = selected_order[j].deadline - current_day;
                total_quota += selected_order[j].quota;
                if(pow(max_interval - current_productivity, 2) - 4 * (total_quota - current_productivity * max_interval) < 0){
                    valid = false;
                    break;
                }
                long long latest_diverge_day = floor(((double) (max_interval - current_productivity) + sqrt(pow(max_interval - current_productivity, 2) - 4 * (total_quota - current_productivity * max_interval))) / 2);
                long long earliest_diverge_day = ceil(((double) (max_interval - current_productivity) - sqrt(pow(max_interval - current_productivity, 2) - 4 * (total_quota - current_productivity * max_interval))) / 2);
                if(latest_diverge_day < earliest_diverge_day){
                    valid = false;
                    break;
                }
                diverge_day = min(diverge_day, latest_diverge_day);
            }
            if(!valid){
                break;
            }
            current_productivity += diverge_day;
            cars_ready = cars_ready + current_productivity * (selected_order[i].deadline - current_day - diverge_day) - selected_order[i].quota;
            current_day = selected_order[i].deadline;
        }
        if(valid){
            long long profit = 0;
            for(int i = 0; i < selected_order.size(); i++){
                profit += selected_order[i].profit;
            }
            max_profit = max(max_profit, profit);
        }
    }
    cout << max_profit;
    return 0;
}
