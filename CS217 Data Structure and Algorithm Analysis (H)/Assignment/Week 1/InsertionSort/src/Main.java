import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int length = input.nextInt();
        int[] array = new int[length];
        for (int i = 0; i < length; i++) {
           array[i] = input.nextInt();
        }
        for (int i = 1; i < length; i++) {
            int key = array[i];
            int j = i - 1;
            while(j >= 0 && array[j] > key) {
                array[j + 1] = array[j];
                j--;
            }
            array[j+1] = key;
        }
        for (int i = 0; i < length; i++) {
            System.out.print(array[i] + " ");
        }
    }
}
