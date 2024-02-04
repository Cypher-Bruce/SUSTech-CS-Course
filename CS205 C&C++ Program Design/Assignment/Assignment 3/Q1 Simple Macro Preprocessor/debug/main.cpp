#include<iostream>
#include<stack>
using namespace std;

const int maxV = 2E6 + 2;
const int maxE = 2E6 + 2;

struct Edge{
    int to,next;
} edge[maxE];
int head[maxV], edge_cnt;

void add_edge(int u, int v){
    edge_cnt++;
    edge[edge_cnt].to = v;
    edge[edge_cnt].next = head[u];
    head[u] = edge_cnt;
}

int dfn[maxV], low[maxV], disc_time;
int scc[maxV], scc_cnt;
bool in_stack[maxV];
stack<int> s;

void Tarjan(int src){
    disc_time++;
    dfn[src] = low[src] = disc_time;
    s.push(src);
    in_stack[src] = true;

    for(int i = head[src]; i; i = edge[i].next){
        int dst = edge[i].to;
        if(!dfn[dst]){
            Tarjan(dst);
            low[src] = min(low[src], low[dst]);
        }else if(in_stack[dst]){
            low[src] = min(low[src], dfn[dst]);
        }
    }

    if(dfn[src] == low[src]){
        scc_cnt++;
        while(true){
            int vertex = s.top();
            s.pop();
            in_stack[vertex] = false;
            scc[vertex] = scc_cnt;
            if(vertex == src){
                break;
            }
        }
    }
}

bool two_sat(int n){
    for(int i = 1; i <= 2 * n; i++){
        if(!dfn[i]){
            Tarjan(i);
        }
    }
    for(int i = 1; i <= n; i++){
        if(scc[i] == scc[i + n]){
            return false;
        }
    }
    return true;
}

int main() {
    int n, m;
    cin >> n >> m;

    for(int i = 1; i <= m; i++){
        int u, u_value, v, v_value;
        cin >> u >> u_value >> v >> v_value;
        add_edge(u + !u_value * n, v + v_value * n);
        add_edge(v + !v_value * n, u + u_value * n);
    }

    if(two_sat(n)){
        cout << "POSSIBLE" << endl;
        for (int i = 1; i <= n; i++) {
            cout << ((scc[i] > scc[i + n]) ? 1 : 0) << " ";
        }
    }else{
        cout << "IMPOSSIBLE" << endl;
    }
    return 0;
}