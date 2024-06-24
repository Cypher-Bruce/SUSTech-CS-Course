#include <iostream>
#include <cstring>
#include <queue>
using namespace std;

const int MAX_N = 200;
const int INF = 0x3f3f3f3f;

int source, target;
long long max_flow = 0;

struct Edge {
    int to, next, value;
};
Edge edges[MAX_N * MAX_N * 2];

int head[MAX_N * 2 + 2], edgeCount = 2;
int cur[MAX_N * 2 + 2];
void add_edge(int from, int to, int capacity) {
    edges[edgeCount].to = to;
    edges[edgeCount].value = capacity;
    edges[edgeCount].next = head[from];
    head[from] = edgeCount;
    edgeCount++;

    edges[edgeCount].to = from;
    edges[edgeCount].value = 0;
    edges[edgeCount].next = head[to];
    head[to] = edgeCount;
    edgeCount++;
}

int depth[MAX_N * 2 + 2];
bool bfs(){
    memset(depth, 0x3f, sizeof(depth));
    queue<int> q;
    q.push(source);
    depth[source] = 0;
    while (!q.empty()) {
        int current = q.front();
        q.pop();
        for (int i = head[current]; i; i = edges[i].next) {
            int to = edges[i].to;
            if (edges[i].value > 0 && depth[to] == INF) {
                depth[to] = depth[current] + 1;
                q.push(to);
            }
        }
    }
    memcpy(cur, head, sizeof(head));
    if (depth[target] == INF) {
        return false;
    }
    return true;
}

int dfs(int current, int flow) {
    if (current == target) {
        return flow;
    }
    int flow_used = 0;
    for (int i = cur[current]; i && flow; i = edges[i].next) {
        cur[current] = i;
        int to = edges[i].to;
        if (edges[i].value > 0 && depth[to] == depth[current] + 1) {
            int k = dfs(to, min(flow, edges[i].value));
            if (k == 0) {
                depth[to] = INF;
            }
            edges[i].value -= k;
            edges[i ^ 1].value += k;
            flow_used += k;
            flow -= k;
        }
    }
    return flow_used;
}

void dinic() {
    while (bfs()) {
        max_flow += dfs(source, INF);
    }
}

int sequence[MAX_N + 1];
int capacity[MAX_N + 1];
int dp[MAX_N + 1];
int longest_sequence;

int main() {
    int n;
    cin >> n;
    for (int i = 1; i <= n; i++) {
        cin >> sequence[i];
    }
    for (int i = 1; i <= n; i++) {
        cin >> capacity[i];
    }

    for (int i = 1; i <= n; i++) {
        dp[i] = 1;
        for (int j = 1; j < i; j++) {
            if (sequence[j] <= sequence[i]) {
                dp[i] = max(dp[i], dp[j] + 1);
            }
        }
        longest_sequence = max(longest_sequence, dp[i]);
    }

    cout << longest_sequence << endl;

    source = 0;
    target = n * 2 + 1;

    for (int i = 1; i <= n; i++) {
        if (dp[i] == 1) {
            add_edge(source, i, INF);
        }
        if (dp[i] == longest_sequence) {
            add_edge(i + n, target, INF);
        }
        for (int j = 1; j < i; j++) {
            if (sequence[j] <= sequence[i] && dp[j] + 1 == dp[i]) {
                add_edge(j + n, i, INF);
            }
        }
        add_edge(i, i + n, capacity[i]);
    }

    // for debug

//    for (int i = source; i <= target; i++){
//        cout << i << ": " << endl;
//        for (int j = head[i]; j; j = edges[j].next){
//            cout << "\tto " << edges[j].to << " value " << edges[j].value << " " << endl;
//        }
//        cout << endl;
//    }

    dinic();

    cout << max_flow << endl;
    return 0;
}
