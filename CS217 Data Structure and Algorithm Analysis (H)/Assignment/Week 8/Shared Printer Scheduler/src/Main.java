import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int n = input.nextInt();
        myQueue queue = new myQueue();
        for (int i = 0; i < n; i++) {
            int m = input.nextInt();
            if(m == 0){
                System.out.println(queue.deQueue());
            }else{
                System.out.println(queue.enQueue(m));
            }
        }
    }
}

class myQueue{
    private final int MAX_SIZE = 9;
    private int[] queue = new int[MAX_SIZE];
    private int front = 0;
    private int tail = 0;
    private int size = 0;
    public String enQueue(int data){
        if(size == MAX_SIZE){
            return "overflow";
        }
        queue[tail] = data;
        tail = (tail + 1) % MAX_SIZE;
        size++;

        if(size == MAX_SIZE){
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < MAX_SIZE; i++) {
                sb.append(queue[(front + i) % MAX_SIZE]);
                sb.append(" ");
            }
            return sb.toString();
        }

        int i = front;
        StringBuilder sb = new StringBuilder();
        while(i != tail){
            sb.append(queue[i]);
            sb.append(" ");
            i = (i + 1) % MAX_SIZE;
        }
        return sb.toString();
    }

    public String deQueue(){
        if(size == 0){
            return "underflow";
        }
        front = (front + 1) % MAX_SIZE;
        size--;

        if(size == 0){
            return "empty";
        }
        StringBuilder sb = new StringBuilder();
        int i = front;
        while(i != tail){
            sb.append(queue[i]);
            sb.append(" ");
            i = (i + 1) % MAX_SIZE;
        }
        return sb.toString();
    }
}