#include <iostream>
using namespace std;

const int MAX_NODE = 100001;

class Node{
public:
    int value, dist, left, right, root;
};
Node leftist_tree[MAX_NODE];

int find_root(int x){
    if (leftist_tree[x].root == x){
        return x;
    }
    return leftist_tree[x].root = find_root(leftist_tree[x].root);
}

int merge(int x, int y){
    if (x == 0 || y == 0){
        return x + y;
    }
    if (leftist_tree[x].value > leftist_tree[y].value || (leftist_tree[x].value == leftist_tree[y].value && x > y)){
        swap(x, y);
    }
    leftist_tree[x].right = merge(leftist_tree[x].right, y);
    if (leftist_tree[leftist_tree[x].left].dist < leftist_tree[leftist_tree[x].right].dist){
        swap(leftist_tree[x].left, leftist_tree[x].right);
    }
    leftist_tree[x].dist = leftist_tree[leftist_tree[x].right].dist + 1;
    leftist_tree[leftist_tree[x].left].root = x;
    leftist_tree[leftist_tree[x].right].root = x;
    leftist_tree[x].root = x;
    return x;
}

void pop(int x){
    leftist_tree[x].value = -1;
    leftist_tree[leftist_tree[x].left].root = leftist_tree[x].left;
    leftist_tree[leftist_tree[x].right].root = leftist_tree[x].right;
    leftist_tree[x].root = merge(leftist_tree[x].left, leftist_tree[x].right);
}

int main() {
    int n, m;
    leftist_tree[0].dist = -1;
    scanf("%d %d", &n, &m);
    for (int i = 1; i <= n; ++i) {
        scanf("%d", &leftist_tree[i].value);
        leftist_tree[i].root = i;
    }
    for (int i = 0; i < m; ++i) {
        int op, x, y;
        scanf("%d", &op);
        if (op == 1){
            scanf("%d %d", &x, &y);
            if(leftist_tree[x].value == -1 || leftist_tree[y].value == -1){
                continue;
            }
            int root_x = find_root(x);
            int root_y = find_root(y);
            if (root_x == root_y){
                continue;
            }
            merge(root_x, root_y);
        }else{
            scanf("%d", &x);
            if(leftist_tree[x].value == -1){
                printf("-1\n");
                continue;
            }
            int root_x = find_root(x);
            printf("%d\n", leftist_tree[root_x].value);
            pop(root_x);
        }
    }
    return 0;
}
