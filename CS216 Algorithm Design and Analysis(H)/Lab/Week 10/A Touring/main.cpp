#include <iostream>
#include <vector>
#include <queue>
#include <limits>
#include <cmath>
#include <iomanip>
#include <algorithm>

using namespace std;
struct Edge{
    int from, to, value, cost;
};

const int MAX_NODE = 7E3;
const int MAX_EDGE = 1E4;

vector<Edge> edges[MAX_NODE + 1];
Edge temp_edge[MAX_EDGE];
int visited[MAX_NODE + 1];
double dist[MAX_NODE + 1];

bool loop_flag;
void spfa_dfs(int now, double k){
    visited[now] = 1;
    for (int i = 0; i < edges[now].size(); i++) {
        int to = edges[now][i].to;
        if(dist[to] > dist[now] + k * edges[now][i].cost - edges[now][i].value) {
            dist[to] = dist[now] + k * edges[now][i].cost - edges[now][i].value;
            if(visited[to] == 0) {
                spfa_dfs(to, k);
            } else if(visited[to] == 1) {
                loop_flag = true;
                return;
            }
        }
        if(loop_flag) {
            return;
        }
    }
    visited[now] = 0;
}


bool dfs(int now) {
    visited[now] = 1;
    for (int i = 0; i < edges[now].size(); i++) {
        int to = edges[now][i].to;
        if(visited[to] == 0) {
            if(dfs(to)) {
                return true;
            }
        } else if(visited[to] == 1) {
            return true;
        }
    }
    visited[now] = 2;
    return false;
}

int main() {
    int n, m;
    cin >> n >> m;

    for (int i = 0; i < m; i++) {
        cin >> temp_edge[i].from >> temp_edge[i].to >> temp_edge[i].value;
    }
    for (int i = 0; i < m; ++i) {
        cin >> temp_edge[i].cost;
    }

    for (int i = 0; i < m; i++) {
        edges[temp_edge[i].from].push_back({temp_edge[i].from, temp_edge[i].to, temp_edge[i].value, temp_edge[i].cost});
    }
    for (int i = 1; i <= n; i++) {
        edges[0].push_back({0, i, 1, 0});
    }

    if (!dfs(0)) {
        cout << -1 << endl;
        return 0;
    }

    double left = 0, right = 200;
    while(true){
        fill(dist, dist + MAX_NODE + 1, 1E9);
        fill(visited, visited + MAX_NODE + 1, 0);
        loop_flag = false;

        double mid = (left + right) / 2;
        spfa_dfs(0, mid);
        if(!loop_flag) {
            right = mid;
        } else {
            left = mid;
        }

        if(round(left * 10) == round(right * 10)) {
            break;
        }
    }
    cout << fixed << setprecision(1);
    cout << round(left * 10) / 10.0 << endl;
    return 0;
}
