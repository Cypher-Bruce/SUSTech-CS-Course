#include <iostream>
using namespace std;

const int MAX_NODE = 100;
const int MAX_K = 50;

struct Edge{
    int to, length, next;
};
Edge edges[MAX_NODE + 5];
int head[MAX_NODE + 5], edge_count;
void add_edge(int u, int v, int w){
    edge_count++;
    edges[edge_count].to = v;
    edges[edge_count].length = w;
    edges[edge_count].next = head[u];
    head[u] = edge_count;
}

int dist[MAX_NODE + 5], production[MAX_NODE + 5];
long long dp[MAX_NODE + 5][MAX_NODE + 5][MAX_K + 5][2];
int n, k;
int stack[MAX_NODE + 5], stack_top;
void dfs(int now){
    stack[stack_top] = now;
    stack_top++;
    for(int i = head[now]; i; i = edges[i].next){
        int to = edges[i].to;
        dist[to] = dist[now] + edges[i].length;
        dfs(to);
        for (int j = 0; j < stack_top; j++){
            for (int l = k; l >= 0; l--){
                dp[now][stack[j]][l][0] += dp[to][stack[j]][0][0];
                dp[now][stack[j]][l][1] += dp[to][now][0][0];
                for (int m = 0; m <= l; m++){
                    dp[now][stack[j]][l][0] = min(dp[now][stack[j]][l][0], dp[now][stack[j]][l - m][0] + dp[to][stack[j]][m][0]);
                    dp[now][stack[j]][l][1] = min(dp[now][stack[j]][l][1], dp[now][stack[j]][l - m][1] + dp[to][now][m][0]);
                }
            }
        }
    }
    for (int j = 0; j < stack_top; j++){
        for (int l = 0; l <= k; l++){
            if (l == 0){
                dp[now][stack[j]][l][0] += production[now] * (dist[now] - dist[stack[j]]);
            }else{
                dp[now][stack[j]][l][0] = min(dp[now][stack[j]][l][0] + production[now] * (dist[now] - dist[stack[j]]), dp[now][stack[j]][l-1][1]);
            }
        }
    }
    stack_top--;
}

int main(){
    cin >> n >> k;
    for(int i = 1; i <= n; i++){
        int product, father, length;
        cin >> product >> father >> length;
        production[i] = product;
        add_edge(father, i, length);
    }

    dfs(0);

    cout << dp[0][0][k][0] << endl;
    return 0;
}