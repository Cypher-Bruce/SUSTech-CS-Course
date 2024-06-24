#include<iostream>
#include<queue>
#include <cstring>

using namespace std;

const int MAX_NODE = 1E5 + 5;

struct Node{
    int father, next_node, last_node, node_count, color_cost_sum, color_cost;
};
Node nodes[MAX_NODE];
bool visited[MAX_NODE];
priority_queue<pair<double, int>> max_heap;

int main(){
    memset(visited, false, sizeof(visited));

    int n, root;
    cin >> n >> root;
    for(int i = 1; i <= n; i++) {
        cin >> nodes[i].color_cost;
        nodes[i].last_node = i;
        nodes[i].node_count = 1;
        nodes[i].color_cost_sum = nodes[i].color_cost;
        if (i != root){
            max_heap.push(make_pair((double)nodes[i].color_cost, i));
        }
    }
    for(int i = 1, father, son; i < n; i++){
        cin >> father >> son;
        nodes[son].father = father;
    }

    while(!max_heap.empty()) {
        int node_id = max_heap.top().second;
        max_heap.pop();
        if(visited[node_id]){
            continue;
        }
        visited[node_id] = true;

        int father_id = nodes[node_id].father;
        while(visited[father_id] && father_id != root){
            father_id = nodes[father_id].father;
        }
        nodes[nodes[father_id].last_node].next_node = node_id;
        nodes[father_id].last_node = nodes[node_id].last_node;
        nodes[father_id].node_count += nodes[node_id].node_count;
        nodes[father_id].color_cost_sum += nodes[node_id].color_cost_sum;
        if(father_id != root){
            max_heap.push(make_pair((double)nodes[father_id].color_cost_sum / nodes[father_id].node_count, father_id));
        }
    }

    long long ans = 0;
    int pos = root, time = 0;
    while(pos){
        time++;
        ans += nodes[pos].color_cost * time;
        pos = nodes[pos].next_node;
    }
    cout << ans << endl;
    return 0;
}