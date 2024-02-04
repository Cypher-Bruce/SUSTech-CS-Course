import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        int[] array = new int[n];
        for (int i = 0; i < n; i++) {
            array[i] = input.nextInt();
        }
        int m = input.nextInt();
        for (int i = 0; i < m; i++) {
            int x = input.nextInt();
            if(binarySearch(array, x, 0, array.length - 1)){
                System.out.println("yes");
            }else{
                System.out.println("no");
            }
        }
    }

    public static boolean binarySearch(int[] array, int x, int low, int high) {
        if (low > high) {
            return false;
        }
        int mid = (low + high) / 2;
        if (array[mid] == x) {
            return true;
        } else if (array[mid] > x) {
            return binarySearch(array, x, low, mid - 1);
        } else {
            return binarySearch(array, x, mid + 1, high);
        }
    }
}


