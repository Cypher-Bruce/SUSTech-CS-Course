import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int N = input.nextInt();
        int M = input.nextInt();
        min_priority_queue Q = new min_priority_queue(N);
        vertex[] vertices = new vertex[N+1];
        ArrayList<ArrayList<edge>> adj = new ArrayList<>();
        for (int i = 0; i <= N; i++) {
            adj.add(new ArrayList<>());
        }
        for (int i = 1; i <= N; i++) {
            vertices[i] = new vertex(i);
            Q.insert(vertices[i]);
        }
        for (int i = 0; i < M; i++) {
            int u = input.nextInt();
            int v = input.nextInt();
            long w = input.nextLong();
            adj.get(u).add(new edge(u, v, w));
        }
        int root = input.nextInt();
        vertices[root].distance = 0;
        Q.decrease_key(root, 0);
        Q.build_heap();
        while(Q.size > 0){
            vertex u = Q.extract_min();
            for (edge e : adj.get(u.id)) {
                if(vertices[e.v].distance > u.distance + e.weight){
                    vertices[e.v].distance = u.distance + e.weight;
                    vertices[e.v].parent = u;
                    Q.decrease_key(e.v, vertices[e.v].distance);
                }
            }
        }

        int dest = input.nextInt();
        int[] path = new int[N+1];
        int index = 0;
        vertex v = vertices[dest];
        if(v.distance == Long.MAX_VALUE){
            System.out.println(-1);
        }else{
            while(v != null){
                path[index] = v.id;
                index++;
                v = v.parent;
            }
        }
        for (int i = index - 1; i >= 0; i--) {
            System.out.print(path[i] + " ");
        }
    }
}

class vertex{
    int id;
    long distance;
    vertex parent;
    vertex(int id){
        this.id = id;
        distance = Long.MAX_VALUE;
        parent = null;
    }
}

class edge{
    int u;
    int v;
    long weight;
    edge(int u, int v, long weight){
        this.u = u;
        this.v = v;
        this.weight = weight;
    }
}

class min_priority_queue{
    vertex[] heap;
    int size;
    min_priority_queue(int N){
        heap = new vertex[N];
        size = 0;
    }
    void insert(vertex v){
        heap[size] = v;
        size++;
    }
    void heapify(int i){
        int smallest = i;
        int left = 2*i + 1;
        int right = 2*i + 2;
        if(left < size && heap[left].distance < heap[smallest].distance){
            smallest = left;
        }
        if(right < size && heap[right].distance < heap[smallest].distance){
            smallest = right;
        }
        if(smallest != i){
            vertex temp = heap[i];
            heap[i] = heap[smallest];
            heap[smallest] = temp;
            heapify(smallest);
        }
    }
    void build_heap(){
        for(int i = size/2 - 1; i >= 0; i--){
            heapify(i);
        }
    }
    vertex extract_min(){
        vertex min = heap[0];
        heap[0] = heap[size - 1];
        size--;
        heapify(0);
        return min;
    }
    void decrease_key(int i, long key){
        int index = -1;
        for (int j = 0; j < size; j++) {
            if(heap[j].id == i){
                index = j;
                break;
            }
        }
        heap[index].distance = key;
        while(index > 0 && heap[(index - 1)/2].distance > heap[index].distance){
            vertex temp = heap[index];
            heap[index] = heap[(index - 1)/2];
            heap[(index - 1)/2] = temp;
            index = (index - 1)/2;
        }
    }
}


