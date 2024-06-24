#include <iostream>
#include <cstring>
#include <queue>

using namespace std;
const int MAX_NODE = 300;
const int MAX_EDGE = 10000;
const int INF = 0x3f3f3f3f;
int source, target;
long long max_flow = 0;

struct Edge {
    int to, next, value;
};
Edge edges[MAX_EDGE * 2 + 2];

int head[MAX_NODE], edgeCount = 2;
int cur[MAX_NODE];
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

int depth[MAX_NODE];
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


int main() {
    int n, m, s, t;
    cin >> n >> m >> s >> t;

    for (int i = 0; i < m; i++) {
        int from, to, capacity;
        cin >> from >> to >> capacity;
        add_edge(from, to, capacity);
    }
    source = s;
    target = t;

    dinic();

    cout << max_flow << endl;
    return 0;
}
