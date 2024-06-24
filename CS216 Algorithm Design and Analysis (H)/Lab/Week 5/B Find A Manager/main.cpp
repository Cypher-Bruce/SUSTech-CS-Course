#include <iostream>
#include <stack>
using namespace std;

const int MAX_NODE = 10005;
const int MAX_EDGE = 300005;

struct Edge{
    int dist, left, right, to, from;
    long long weight, tag;
};

Edge leftist_tree[MAX_EDGE + 2 * MAX_NODE];
int edge_count = 0;
int father[2 * MAX_NODE], root[2 * MAX_NODE];
bool visited[2 * MAX_NODE];

void push_down_tag(int x){
    leftist_tree[leftist_tree[x].left].weight += leftist_tree[x].tag;
    leftist_tree[leftist_tree[x].right].weight += leftist_tree[x].tag;
    leftist_tree[leftist_tree[x].left].tag += leftist_tree[x].tag;
    leftist_tree[leftist_tree[x].right].tag += leftist_tree[x].tag;
    leftist_tree[x].tag = 0;
}

int new_edge(int from, int to, long long weight){
    edge_count++;
    leftist_tree[edge_count].from = from;
    leftist_tree[edge_count].to = to;
    leftist_tree[edge_count].weight = weight;
    return edge_count;
}

int merge(int x, int y){
    if(!x || !y){
        return x + y;
    }
    push_down_tag(x);
    push_down_tag(y);
    if(leftist_tree[x].weight > leftist_tree[y].weight){
        swap(x, y);
    }
    leftist_tree[x].right = merge(leftist_tree[x].right, y);
    if(leftist_tree[leftist_tree[x].left].dist < leftist_tree[leftist_tree[x].right].dist){
        swap(leftist_tree[x].left, leftist_tree[x].right);
    }
    leftist_tree[x].dist = leftist_tree[leftist_tree[x].right].dist + 1;
    return x;
}

int pop(int x){
    push_down_tag(x);
    return merge(leftist_tree[x].left, leftist_tree[x].right);
}

int find_father(int x){
    if(x == father[x]){
        return x;
    }
    return father[x] = find_father(father[x]);
}

int main() {
    //freopen("C:\\Users\\Cyphe\\Documents\\SUSTech Assignment\\Term 4\\Algorithm Design and Analysis\\Lab\\Week 5\\B Random Gen\\data.txt", "r", stdin);
    int n, m;
    cin >> n >> m;
    long long sum_weight = 0, ans = 0;
    for (int i = 0; i < m; ++i) {
        int u, v, w;
        cin >> u >> v >> w;
        sum_weight += w;
        u++;
        v++;
        int edge_id = new_edge(u, v, w);
        root[v] = merge(root[v], edge_id);
    }

    int super_root = 0;
    for (int i = 1; i <= n; ++i) {
        int edge_id = new_edge(i, i % n + 1, sum_weight + 1);
        root[i % n + 1] = merge(root[i % n + 1], edge_id);
    }
    for (int i = 1; i <= n; ++i) {
        int edge_id = new_edge(0, i, sum_weight + 1);
        root[i] = merge(root[i], edge_id);
    }
    int edge_id = new_edge(n, 0, sum_weight + 1);
    root[0] = merge(root[0], edge_id);

    for (int i = 1; i <= 2 * n; ++i) {
        father[i] = i;
    }

    stack<int> node_stack;
    int loop_count = n, real_root;
    node_stack.push(super_root);
    visited[super_root] = true;

    while(root[node_stack.top()]){
        int current_node = node_stack.top();
        int min_edge = root[current_node];
        int from_node = find_father(leftist_tree[min_edge].from);
        if(from_node == current_node){
            root[current_node] = pop(root[current_node]);
            continue;
        }
        if(!visited[from_node]){
            visited[from_node] = true;
            node_stack.push(from_node);
            continue;
        }
        loop_count++;
        while(visited[from_node]){
            int node_id = node_stack.top();
            node_stack.pop();
            visited[node_id] = false;
            father[node_id] = loop_count;
            leftist_tree[root[node_id]].tag -= leftist_tree[root[node_id]].weight;
            if(find_father(leftist_tree[root[node_id]].to) != find_father(super_root)){
                ans += leftist_tree[root[node_id]].weight;
            }
            if(leftist_tree[root[node_id]].from == super_root){
                real_root = leftist_tree[root[node_id]].to;
            }
            root[node_id] = pop(root[node_id]);
            root[loop_count] = merge(root[loop_count], root[node_id]);
        }
        visited[loop_count] = true;
        node_stack.push(loop_count);
    }

    if(ans > sum_weight * 2 + 1){
        cout << "impossible" << endl;
    }else{
        cout << ans - sum_weight - 1 << " " << real_root - 1 << endl;
    }
    return 0;
}

