#include <iostream>
#include <vector>
#include <cmath>
#include <algorithm>

using namespace std;

class Node{
public:
    Node* parent;
    int cord_x;
    int cord_y;
    int size;
};

class Edge{
public:
    int weight;
    Node* node_1;
    Node* node_2;
    bool operator<(const Edge& edge) const{
        return weight < edge.weight;
    }
};

Node* find_set(Node* node){
    if(node->parent != node){
        node->parent = find_set(node->parent);
    }
    return node->parent;
}

bool union_nodes(Node* node_1, Node* node_2){
    Node* parent_1 = find_set(node_1);
    Node* parent_2 = find_set(node_2);
    if(parent_1 == parent_2){
        return false;
    }
    Node* larger = parent_1->size > parent_2->size ? parent_1 : parent_2;
    Node* smaller = parent_1->size > parent_2->size ? parent_2 : parent_1;
    smaller->parent = larger;
    larger->size += smaller->size;
    return true;
}

bool same_set(Node* node_1, Node* node_2){
    return find_set(node_1) == find_set(node_2);
}


int main() {
    int n, k;
    vector<Edge> edges;
    vector<Node*> nodes;
    cin >> n >> k;
    for(int i = 0; i < n; i++){
        Node* node = new Node();
        scanf("%d %d", &node->cord_x, &node->cord_y);
        node->parent = node;
        node->size = 1;
        nodes.push_back(node);
    }
    for(int i = 0; i < n; i++){
        for(int j = i + 1; j < n; j++){
            int weight = pow(nodes[i]->cord_x - nodes[j]->cord_x, 2) + pow(nodes[i]->cord_y - nodes[j]->cord_y, 2);
            Edge edge = Edge();
            edge.weight = weight;
            edge.node_1 = nodes[i];
            edge.node_2 = nodes[j];
            edges.push_back(edge);
        }
    }
    sort(edges.begin(), edges.end());

    int chosen_edges = 0;
    int index = 0;
    while(true){
        if(chosen_edges == n - k){
            break;
        }
        Edge edge = edges[index];
        index++;
        if(union_nodes(edge.node_1, edge.node_2)){
            chosen_edges++;
        }
    }

    while(true){
        Edge edge = edges[index];
        index++;
        if(!same_set(edge.node_1, edge.node_2)){
            printf("%.2f", sqrt(edge.weight));
            break;
        }
    }

    while(!nodes.empty()){
        delete nodes.back();
        nodes.pop_back();
    }
    return 0;
}
