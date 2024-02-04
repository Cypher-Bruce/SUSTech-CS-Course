import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        myStack stack = new myStack();
        int n = input.nextInt();

        for (int i = 0; i < n; i++) {
            String s = input.next();
            if(s.charAt(0) == '+' || s.charAt(0) == '-' || s.charAt(0) == '*') {
                int a = stack.pop();
                int b = stack.pop();
                switch (s) {
                    case "+":
                        stack.push(b + a);
                        break;
                    case "-":
                        stack.push(b - a);
                        break;
                    case "*":
                        stack.push(b * a);
                        break;
                }
            } else {
                stack.push(Integer.parseInt(s));
            }
        }

        System.out.println(stack.pop());
    }
}

class myStack {
    private final int MAX_SIZE = 100000;
    private int[] content = new int[MAX_SIZE];
    private int size = 0;
    public void push(int n) {
        if (size == MAX_SIZE) {
            return;
        }
        content[size] = n;
        size++;
    }
    public int pop() {
        if (size == 0) {
            return -1;
        }
        size--;
        return content[size];
    }
    public boolean empty(){
        return size == 0;
    }
}