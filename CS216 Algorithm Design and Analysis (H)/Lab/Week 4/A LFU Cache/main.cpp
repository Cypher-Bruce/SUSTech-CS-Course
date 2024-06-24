#include<iostream>
#include<unordered_map>

using namespace std;

int N, M, T;
int current_time = 0;
int min_freq = 0;

class Node{
public:
    int key, value, freq, update_time;
    Node *next, *prev;
};

void push_time_node(Node *node);

unordered_map<int, Node*> freq_to_LFU_head;
unordered_map<int, Node*> key_to_LFU_node;
unordered_map<int, Node*> key_to_LRU_node;

Node* create_sentinel(){
    Node* sentinel = new Node();
    sentinel -> next = sentinel;
    sentinel -> prev = sentinel;
    return sentinel;
}

void push_value_node(Node* node, int freq){
    if(freq_to_LFU_head.find(freq) == freq_to_LFU_head.end()){
        freq_to_LFU_head[freq] = create_sentinel();
    }
    node -> next = freq_to_LFU_head[freq] -> next;
    node -> prev = freq_to_LFU_head[freq];
    freq_to_LFU_head[freq] -> next -> prev = node;
    freq_to_LFU_head[freq] -> next = node;
}

void remove_node(Node* node) {
    node -> prev -> next = node -> next;
    node -> next -> prev = node -> prev;
}

Node* LRU_head;

void evict_timeout_node(){
    current_time++;
    Node* node = LRU_head -> prev;
    if(node == LRU_head){
        return;
    }
    if(current_time - node -> update_time <= T){
        return;
    }
    remove_node(node);
    Node* value_node = key_to_LFU_node[node -> key];
    remove_node(value_node);
    Node* old_sentinel = freq_to_LFU_head[value_node -> freq];
    if(old_sentinel -> next == old_sentinel){
        freq_to_LFU_head.erase(value_node -> freq);
        delete old_sentinel;
        if(min_freq == value_node -> freq){
            min_freq++;
        }
    }
    key_to_LFU_node.erase(node -> key);
    key_to_LRU_node.erase(node -> key);
    delete node;
    delete value_node;
}

void push_time_node(Node* node) {
    node -> next = LRU_head -> next;
    node -> prev = LRU_head;
    LRU_head -> next -> prev = node;
    LRU_head -> next = node;
}

Node* get_node(int key){
    if(key_to_LFU_node.find(key) == key_to_LFU_node.end()){
        return nullptr;
    }

    Node* value_node = key_to_LFU_node[key];

    remove_node(value_node);
    Node* old_sentinel = freq_to_LFU_head[value_node -> freq];
    if(old_sentinel -> next == old_sentinel){
        freq_to_LFU_head.erase(value_node -> freq);
        delete old_sentinel;
        if(min_freq == value_node -> freq){
            min_freq++;
        }
    }

    value_node -> freq++;
    push_value_node(value_node, value_node->freq);

    Node* time_node = key_to_LRU_node[key];
    remove_node(time_node);
    time_node -> update_time = current_time;
    push_time_node(time_node);

    return value_node;
}

int get(int key){
    if(N == 0){
        return -1;
    }
    evict_timeout_node();
    Node* node = get_node(key);
    if(node == nullptr){
        return -1;
    }
    return node -> value;
}

void put(int key, int value){
    if(N == 0){
        return;
    }
    evict_timeout_node();
    Node* node = get_node(key);
    if(node != nullptr){
        node -> value = value;
        return;
    }

    if(key_to_LFU_node.size() == N){
        Node* sentinel = freq_to_LFU_head[min_freq];
        Node* value_to_remove = sentinel -> prev;
        Node* time_to_remove = key_to_LRU_node[value_to_remove -> key];
        remove_node(value_to_remove);
        remove_node(time_to_remove);
        key_to_LFU_node.erase(value_to_remove -> key);
        key_to_LRU_node.erase(value_to_remove -> key);
        delete value_to_remove;
        delete time_to_remove;
        if(sentinel -> next == sentinel){
            freq_to_LFU_head.erase(min_freq);
            delete sentinel;
        }
    }

    Node* new_value_node = new Node();
    new_value_node -> key = key;
    new_value_node -> value = value;
    new_value_node -> freq = 1;
    new_value_node -> update_time = -1;
    push_value_node(new_value_node, 1);
    key_to_LFU_node[key] = new_value_node;

    Node* new_time_node = new Node();
    new_time_node -> key = key;
    new_time_node -> value = value;
    new_time_node -> freq = -1;
    new_time_node -> update_time = current_time;
    push_time_node(new_time_node);
    key_to_LRU_node[key] = new_time_node;

    min_freq = 1;
}


int main(){
    cin >> N >> M >> T;
    LRU_head = create_sentinel();
    for (int i = 0; i < M; ++i) {
        int op;
        cin >> op;
        if(op == 1){
            int key;
            cin >> key;
            cout << get(key) << endl;
        }else{
            int key, value;
            cin >> key >> value;
            put(key, value);
        }
    }
    if(LRU_head -> next != LRU_head){
        Node* node = LRU_head -> next;
        while(node != LRU_head){
            cout << key_to_LFU_node[node -> key] -> value << " ";
            Node* next = node -> next;
            delete node;
            node = next;
        }
        cout << endl;
    }else{
        cout << "empty" << endl;
    }
    delete LRU_head;
    for(auto it = freq_to_LFU_head.begin(); it != freq_to_LFU_head.end(); it++){
        Node* sentinel = it -> second;
        if(sentinel -> next != sentinel){
            Node* node = sentinel -> next;
            while(node != sentinel){
                Node* next = node -> next;
                delete node;
                node = next;
            }
        }
        delete sentinel;
    }
    return 0;
}
