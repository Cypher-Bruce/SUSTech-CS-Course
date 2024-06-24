import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        int k = input.nextInt();

        if(n == 1){
            System.out.println(1);
        }else if(k == 1 || k == n) {
            System.out.println(2);
        }else if(k > n/2) {
            System.out.println((n - k + 1) * 2);
        }else{
            System.out.println(2 * k);
        }
    }
}
