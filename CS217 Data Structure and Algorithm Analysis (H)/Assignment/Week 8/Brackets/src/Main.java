import java.util.Scanner;
import java.util.Stack;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String brackets = input.nextLine();
        myStack s = new myStack();
        boolean flag = true;

        for (int i = 0; i < brackets.length(); i++) {
            if (brackets.charAt(i) == '(' || brackets.charAt(i) == '[' || brackets.charAt(i) == '{') {
                s.push(brackets.charAt(i));
            } else if (brackets.charAt(i) == ')') {
                if(s.pop() != '('){
                    flag = false;
                    break;
                }
            } else if (brackets.charAt(i) == ']') {
                if(s.pop() != '['){
                    flag = false;
                    break;
                }
            } else {
                if(s.pop() != '{'){
                    flag = false;
                    break;
                }
            }
        }
        if(!s.empty()){
            flag = false;
        }

        if(flag){
            System.out.println("Yes");
        }else{
            System.out.println("No");
        }
    }
}
class myStack {
    private char[] content = new char[100000];
    private int size = 0;
    public void push(char c) {
        if (size == 100000) {
            return;
        }
        content[size] = c;
        size++;
    }
    public char pop() {
        if (size == 0) {
            return 'e';
        }
        size--;
        return content[size];
    }
    public boolean empty(){
        return size == 0;
    }
}

