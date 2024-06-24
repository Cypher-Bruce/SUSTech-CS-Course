import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int t = input.nextInt();
        for (int i = 0; i < t; i++) {
            int n = input.nextInt();
            if(n % 6 == 0){
                System.out.println("Bob");
            }else{
                System.out.println("Alice");
            }
        }
    }
}
