import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int num = input.nextInt();
        int[] arr = new int[num];
        for(int i = 0; i < num; i++) {
            arr[i] = input.nextInt();
        }
        for (int i = 0; i < arr.length - 1; i++) {
            for (int j = arr.length - 1; j > i; j--) {
                if (arr[j] < arr[j - 1]) {
                    int temp = arr[j];
                    arr[j] = arr[j-1];
                    arr[j-1] = temp;
                }
            }
        }
        for(int i = 0; i < num; i++) {
            System.out.print(arr[i] + " ");
        }
    }
}
