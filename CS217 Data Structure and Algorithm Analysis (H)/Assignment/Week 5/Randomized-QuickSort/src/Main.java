import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        int arr[] = new int[n];
        for (int i = 0; i < n; i++) {
            arr[i] = input.nextInt();
        }
        Quicksort(arr, 0, n-1);
        for (int i = 0; i < n; i++) {
            System.out.print(arr[i] + " ");
        }
    }
    public static void Quicksort(int[] arr, int left, int right) {
        if (left < right) {
            int pivot = Random_Partition(arr, left, right);
            Quicksort(arr, left, pivot-1);
            Quicksort(arr, pivot+1, right);
        }
    }
    public static void Swap(int[] arr, int a, int b){
        int temp = arr[a];
        arr[a] = arr[b];
        arr[b]= temp;
    }
    public static int Partition(int[] arr, int left, int right){
        int pivot = arr[right];
        int i = left - 1;
        for (int j = left; j < right; j++) {
            if (arr[j] < pivot){
                i++;
                Swap(arr, i, j);
            }
        }
        Swap(arr, i+1, right);
        return i+1;
    }
    public static int Random_Partition(int[] arr, int left, int right){
        int pivot = (int) (Math.random() * (right - left + 1) + left);
        Swap(arr, pivot, right);
        return Partition(arr, left, right);
    }
}
