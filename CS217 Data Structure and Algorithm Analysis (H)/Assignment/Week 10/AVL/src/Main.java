import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        AVLTree tree = new AVLTree();

        int N;
        N = input.nextInt();
        for (int i = 0; i < N; i++) {
            tree.insert(input.nextInt());
        }

        int M;
        M = input.nextInt();
        for (int i = 0; i < M; i++) {
            tree.delete(input.nextInt());
        }

        tree.print();
    }
}

class Node{
    int data;
    int height;
    Node left;
    Node right;
    Node parent;
    Node(int data){
        this.data = data;
        height = 0;
        left = null;
        right = null;
        parent = null;
    }
}

class AVLTree{
    private Node root;
    public AVLTree(){
        root = null;
    }

    public void insert(int data){
        if(root == null){
            root = new Node(data);
        }
        else{
            Node current = root;
            while(true){
                if(current.data > data){
                    if(current.left == null){
                        current.left = new Node(data);
                        current.left.parent = current;
                        updateHeight(current);
                        break;
                    }
                    else{
                        current = current.left;
                    }
                }
                else{
                    if(current.right == null){
                        current.right = new Node(data);
                        current.right.parent = current;
                        updateHeight(current);
                        break;
                    }
                    else{
                        current = current.right;
                    }
                }
            }
        }
    }

    private void updateHeight(Node node){
        while(node != null){
            int leftHeight = (node.left == null) ? 0 : node.left.height + 1;
            int rightHeight = (node.right == null) ? 0 : node.right.height + 1;
            if(leftHeight == rightHeight || leftHeight == rightHeight + 1 || leftHeight + 1 == rightHeight) {
                node.height = Math.max(leftHeight, rightHeight);
                node = node.parent;
            }else if(leftHeight < rightHeight){
                Node right = node.right;
                int rightLeftHeight = (right.left == null) ? 0 : right.left.height + 1;
                int rightRightHeight = (right.right == null) ? 0 : right.right.height + 1;
                if(rightLeftHeight >= rightRightHeight) {
                    if(node == root){
                        root = right.left;
                    }
                    rightRotate(right);
                    leftRotate(node);
                    node.height = Math.max((node.left == null) ? 0 : node.left.height + 1, (node.right == null) ? 0 : node.right.height + 1);
                    right.height = Math.max((right.left == null) ? 0 : right.left.height + 1, (right.right == null) ? 0 : right.right.height + 1);
                    node.parent.height = Math.max((node.parent.left == null) ? 0 : node.parent.left.height + 1, (node.parent.right == null) ? 0 : node.parent.right.height + 1);
                }else{
                    if(node == root){
                        root = right;
                    }
                    leftRotate(node);
                    node.height = Math.max((node.left == null) ? 0 : node.left.height + 1, (node.right == null) ? 0 : node.right.height + 1);
                    right.height = Math.max((right.left == null) ? 0 : right.left.height + 1, (right.right == null) ? 0 : right.right.height + 1);
                }
            }else{
                Node left = node.left;
                int leftLeftHeight = (left.left == null) ? 0 : left.left.height + 1;
                int leftRightHeight = (left.right == null) ? 0 : left.right.height + 1;
                if(leftLeftHeight >= leftRightHeight) {
                    if(node == root){
                        root = left;
                    }
                    rightRotate(node);
                    node.height = Math.max((node.left == null) ? 0 : node.left.height + 1, (node.right == null) ? 0 : node.right.height + 1);
                    left.height = Math.max((left.left == null) ? 0 : left.left.height + 1, (left.right == null) ? 0 : left.right.height + 1);
                }else{
                    if(node == root){
                        root = left.right;
                    }
                    leftRotate(left);
                    rightRotate(node);
                    node.height = Math.max((node.left == null) ? 0 : node.left.height + 1, (node.right == null) ? 0 : node.right.height + 1);
                    left.height = Math.max((left.left == null) ? 0 : left.left.height + 1, (left.right == null) ? 0 : left.right.height + 1);
                    node.parent.height = Math.max((node.parent.left == null) ? 0 : node.parent.left.height + 1, (node.parent.right == null) ? 0 : node.parent.right.height + 1);
                }
            }
        }
    }
    private void leftRotate(Node node){
        Node parent = node.parent;
        Node right = node.right;
        Node rightLeft = right.left;

        if(parent != null){
            if(parent.left == node){
                parent.left = right;
            }else{
                parent.right = right;
            }
        }
        right.parent = parent;
        node.parent = right;
        right.left = node;
        node.right = rightLeft;
        if(rightLeft != null){
            rightLeft.parent = node;
        }
    }

    private void rightRotate(Node node){
        Node parent = node.parent;
        Node left = node.left;
        Node leftRight = left.right;

        if(parent != null){
            if(parent.left == node){
                parent.left = left;
            }else{
                parent.right = left;
            }
        }
        left.parent = parent;
        node.parent = left;
        left.right = node;
        node.left = leftRight;
        if(leftRight != null){
            leftRight.parent = node;
        }
    }

    public void delete(int data){
        Node current = search(data);
        if(current == null){
            return;
        }

        if(current.left == null){
            if(current == root){
                root = current.right;
                if(root != null){
                    root.parent = null;
                }
            }else{
                if(current.parent.left == current){
                    current.parent.left = current.right;
                }else{
                    current.parent.right = current.right;
                }
                if(current.right != null){
                    current.right.parent = current.parent;
                }
            }
            updateHeight(current.parent);
        }else if(current.right == null){
            if(current == root){
                root = current.left;
            }else{
                if(current.parent.left == current){
                    current.parent.left = current.left;
                }else{
                    current.parent.right = current.left;
                }
            }
            updateHeight(current.parent);
        }else{
            Node successor = successor(current);
            Node parent = successor.parent;
            if(current.right != successor){
                successor.parent.left = successor.right;
                if(successor.right != null){
                    successor.right.parent = successor.parent;
                }
                current.right.parent = successor;
                successor.right = current.right;
            }
            if(current == root){
                root = successor;
            }else{
                if(current.parent.left == current){
                    current.parent.left = successor;
                }else{
                    current.parent.right = successor;
                }
            }
            successor.parent = current.parent;
            successor.left = current.left;
            current.left.parent = successor;
            if(current.right != successor){
                updateHeight(successor.parent);
            }else{
                updateHeight(successor);
            }
        }
    }

    private Node search(int data){
        Node current = root;
        while(current != null){
            if(current.data == data){
                return current;
            }else if(current.data > data){
                current = current.left;
            }else{
                current = current.right;
            }
        }
        return null;
    }

    private Node successor(Node node){
        if(node.right != null){
            Node current = node.right;
            while(current.left != null){
                current = current.left;
            }
            return current;
        }else{
            Node current = node;
            while(current.parent != null){
                if(current.parent.left == current){
                    return current.parent;
                }
                current = current.parent;
            }
            return null;
        }
    }

    public void print(){
        inorderPrint(root);
    }

    private void inorderPrint(Node node){
        if(node == null){
            return;
        }
        inorderPrint(node.left);
        System.out.print(node.data + " ");
        inorderPrint(node.right);
    }
}
