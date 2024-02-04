import java.util.Scanner;

public class Main {
    public static void inOrder(Node root){
        if(root == null){
            return;
        }

        if(root.left == null && root.right == null){
            System.out.print(root.data);
            return;
        }

        System.out.print("(");
        inOrder(root.left);
        System.out.print(root.data);
        inOrder(root.right);
        System.out.print(")");
    }

    public static void preOrder(Node root){
        if(root == null){
            return;
        }

        System.out.print(root.data);
        preOrder(root.left);
        preOrder(root.right);
    }

    public static void postOrder(Node root){
        if(root == null){
            return;
        }

        postOrder(root.left);
        postOrder(root.right);
        System.out.print(root.data);
    }
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String s = input.next();
        myStack stack = new myStack();
        Node root = null;
        for (int i = 0; i < s.length(); i++) {
            if(i == 0){
                root = new Node(s.charAt(i));
                stack.push(root);
                continue;
            }
            if(s.charAt(i) == '+' || s.charAt(i) == '-' || s.charAt(i) == '*' || s.charAt(i) == '/'){
                Node newNode = new Node(s.charAt(i));
                Node lastNode = stack.pop();
                if(lastNode.left == null){
                    lastNode.left = newNode;
                }else{
                    lastNode.right = newNode;
                }
                stack.push(lastNode);
                stack.push(newNode);
            }else if('a' <= s.charAt(i) && s.charAt(i) <= 'z'){
                Node newNode = new Node(s.charAt(i));
                Node lastNode = stack.pop();
                if(lastNode.left == null){
                    lastNode.left = newNode;
                    stack.push(lastNode);
                }else{
                    lastNode.right = newNode;
                    while(!stack.isEmpty() && lastNode.left != null && lastNode.right != null){
                        lastNode = stack.pop();
                    }
                    stack.push(lastNode);
                }
            }
        }

        inOrder(root);
        System.out.println();
        preOrder(root);
        System.out.println();
        postOrder(root);
    }
}

class Node{
    char data;
    Node left;
    Node right;
    Node(char data){
        this.data = data;
        left = null;
        right = null;
    }
}

class myStack{
    private Node[] stack;
    private int top;
    public myStack(){
        stack = new Node[20000];
        top = -1;
    }
    public void push(Node node){
        top++;
        stack[top] = node;
    }
    public Node pop(){
        top--;
        return stack[top+1];
    }
    public boolean isEmpty(){
        return top == -1;
    }
}
