#include <bits/stdc++.h>

using namespace std;


const int SIZE = 1e6 + 10;
const int N = 2e4 + 10;
const long long INF = 3e8;
int n, m;

struct Node {
    int f, t, v; // from, to, cost
    int d; // dist
    int tag; // when delete
    int ls, rs; // left son, right son
};

struct Ltt {

    Node node[SIZE];
    int cnt = 0;

    void pushdown(int x) {
        node[node[x].ls].v += node[x].tag;
        node[node[x].rs].v += node[x].tag;
        node[node[x].ls].tag += node[x].tag;
        node[node[x].rs].tag += node[x].tag;
        node[x].tag = 0;
    }

    // construct a new tree node
    int newNode(int f, int t, int c) {
        cnt++;
        node[cnt].f = f;
        node[cnt].t = t;
        node[cnt].v = c;
        return cnt;
    }

    // merge two tree
    int merge(int x, int y) {
        if (!x || !y) {
            return x | y;
        }

        if (node[x].v > node[y].v) {
            swap(x, y);
        }

        pushdown(x);
        pushdown(y);

        node[x].rs = merge(node[x].rs, y);
        if (node[node[x].rs].d > node[node[x].ls].d) {
            swap(node[x].rs, node[x].ls);
        }
        node[x].d = node[node[x].rs].d + 1;
        return x;
    }

    int del(int x) {
        pushdown(x);
        x = merge(node[x].ls, node[x].rs);
        return x;
    }
};

Ltt ltt;
int root[N];
int q[N];
int fa[N]; // record which supernode it belongs to
int vis[N]; // record whether the node is in the queue or not
int edge[N];

int find(int x) {
    if (x == fa[x]) {
        return x;
    } else {
        fa[x] = find(fa[x]);
        return fa[x];
    }
}

int main() {
    freopen("C:\\Users\\Cyphe\\Documents\\SUSTech Assignment\\Term 4\\Algorithm Design and Analysis\\Lab\\Week 5\\B Random Gen\\test.txt", "r", stdin);
    //freopen("C:\\Users\\Cyphe\\Documents\\SUSTech Assignment\\Term 4\\Algorithm Design and Analysis\\Lab\\Week 5\\P4716_1.in", "r", stdin);
    int f, t, c, id;
    int r;
    scanf("%d %d", &n, &m);
    for (int i = 0; i < m; i++) {
        scanf("%d %d %d", &f, &t, &c);
        f++;
        t++;
        id = ltt.newNode(f, t, c);
        root[t] = ltt.merge(root[t], id);
    }


    // strong-connected
    for (int i = 1; i <= n; i++) {
        id = ltt.newNode(i, i % n + 1, INF);
        root[i % n + 1] = ltt.merge(root[i % n + 1], id);
        id = ltt.newNode(0, i, INF);
        root[i] = ltt.merge(root[i], id);
    }

    id = ltt.newNode(n, 0, INF);
    root[0] = ltt.merge(root[0], id);


    for (int i = 1; i <= 2 * n; i++) {
        fa[i] = i;
    }

//    Node b = ltt.node[root[3]];
//    cout << b.f << " " << b.t << " " << b.v << endl;

    r = 0;
    int top = 0;
    top++;
    q[top] = r;
    vis[r] = 1;
    int k = n;
    long long ans = 0;
//    cout << r << endl;
//    cout << top << " " << q[top] << " " << root[q[top]] << endl;
    while (root[q[top]] != 0) {
//        cout << 1 << endl;
        int p = q[top];
        Node w = ltt.node[root[p]];
        int u = find(w.f);

        if (u == p) {
            root[p] = ltt.del(root[p]);
            continue;
        }

        if (vis[u] == 0) {
            vis[u] = 1;
            top++;
            q[top] = u;
            continue;
        }

        k++;
        while (vis[u] == 1) {
//            cout << 1 << endl;
            int v = q[top];
            top--;
            vis[v] = 0;
            fa[v] = k;
            int val = ltt.node[root[v]].v;
            ltt.node[root[v]].tag -= val;
            w = ltt.node[root[v]];
            if (find(w.t) != find(r)) {
                edge[w.t] = root[v];
                ans += val;
            }
//            cout << find(w.t) << " " << find(r) << " " << w.f << " " << w.t << " " << w.v << endl;
            root[v] = ltt.del(root[v]);
            root[k] = ltt.merge(root[k], root[v]);
        }
        top++;
        q[top] = k;
        vis[k] = 1;
    }
//    int g = 1 < 100000 * INF;
//    cout << g << endl;
//    cout << ans << endl;
    if (ans > 2 * INF) {
        ans = -1;
    } else {
        ans -= INF;
    }
//    ans -= INF;
    int ans_node = 100;
    for (int i = 1; i <= n; i++) {
        if (ltt.node[edge[i]].f == 0) {
            ans_node = i;
            ans_node--;
            break;
        }
    }
    if (ans == -1) {
        printf("impossible");
    } else {
        printf("%lld %d\n", ans, ans_node);
    }


    return 0;
}
