import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int numberOfNodes = input.nextInt();
        int numberOfEdges = input.nextInt();
        int root = input.nextInt();
        Node[] nodes = new Node[numberOfNodes + 1];
        for(int i = 1; i <= numberOfNodes; i++){
            nodes[i] = new Node(i);
        }
        for(int i = 0; i < numberOfEdges; i++){
            int node1 = input.nextInt();
            int node2 = input.nextInt();
            nodes[node1].neighbors.add(nodes[node2]);
            nodes[node2].neighbors.add(nodes[node1]);
        }
        int query1 = input.nextInt();
        int query2 = input.nextInt();

        BFS(nodes[root]);
        QueryPath(nodes[query1]);
        QueryPath(nodes[query2]);
    }

    private static void QueryPath(Node node) {
        if(node.distance == -1){
            System.out.println(-1);
            return;
        }
        ArrayList<Integer> path = new ArrayList<>();
        while(node != null){
            path.add(node.name);
            node = node.parent;
        }
        for (int i = 0; i < path.size(); i++) {
            System.out.print(path.get(path.size() - i - 1) + " ");
        }
        System.out.println();
    }

    private static void BFS(Node root) {
        root.color = 1;
        root.distance = 0;
        root.parent = null;
        ArrayList<Node> queue = new ArrayList<>();
        queue.add(root);
        while(!queue.isEmpty()){
            Node currentNode = queue.remove(0);
            for(Node neighbor : currentNode.neighbors){
                if(neighbor.color == 0){
                    neighbor.color = 1;
                    neighbor.distance = currentNode.distance + 1;
                    neighbor.parent = currentNode;
                    queue.add(neighbor);
                }
            }
            currentNode.color = 2;
        }
    }
}

class Node{
    public int name;
    public int color;
    public int distance;
    public Node parent;
    public ArrayList<Node> neighbors;
    Node(int name){
        this.name = name;
        color = 0;
        distance = -1;
        parent = null;
        neighbors = new ArrayList<>();
    }
}