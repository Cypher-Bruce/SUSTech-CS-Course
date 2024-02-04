import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Main {
    static int time;
    static boolean isDAG;
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int N = input.nextInt();
        int M = input.nextInt();
        Node[] nodes = new Node[N];
        for (int i = 0; i < M; i++) {
            nodes[i] = new Node(i+1);
        }
        for (int i = 0; i < N; i++) {
            int a = input.nextInt();
            int b = input.nextInt();
            nodes[a-1].children.add(nodes[b-1]);
        }

        time = 0;
        isDAG = true;
        for (Node node : nodes) {
            if (node.color == 0) {
                DFS_Visit(node);
            }
        }

        if (isDAG) {
            Arrays.sort(nodes);
            for (int i = 0; i < N; i++) {
                System.out.print(nodes[i].num + " ");
            }
        } else {
            System.out.println("-1");
        }
    }
    private static void DFS_Visit(Node node) {
        time++;
        node.discover = time;
        node.color = 1;
        for (Node child : node.children) {
            if (child.color == 0) {
                DFS_Visit(child);
            } else if (child.color == 1) {
                isDAG = false;
            }
        }
        node.color = 2;
        time++;
        node.finish = time;
    }
}

class Node implements Comparable<Node>{
    public int num;
    public int color;
    public int discover;
    public int finish;
    ArrayList<Node> children;
    public Node(int num) {
        this.num = num;
        color = 0;
        discover = 0;
        finish = 0;
        children = new ArrayList<>();
    }

    @Override
    public int compareTo(Node o) {
        return Integer.compare(o.finish, this.finish);
    }
}
