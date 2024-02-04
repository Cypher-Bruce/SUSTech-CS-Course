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
            int leftPivot = Partition(arr, left, right);
            int rightPivot = leftPivot;
            while (rightPivot <= right && arr[rightPivot] == arr[leftPivot]) {
                rightPivot++;
            }
            Quicksort(arr, left, leftPivot - 1);
            Quicksort(arr, rightPivot, right);
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
        int j = left - 1;
        for (int k = left; k < right; k++) {
            if(arr[k] < pivot){
                i++;
                j++;
                Swap(arr, i, k);
                if(i != j){
                    Swap(arr, j, k);
                }
            }else if(arr[k] == pivot){
                j++;
                Swap(arr, j, k);
            }
        }
        Swap(arr, j + 1, right);
        return i + 1;
    }
}
