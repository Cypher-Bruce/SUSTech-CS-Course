import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int num = input.nextInt();
        int[] array = new int[num];
        for (int i = 0; i < num; i++) {
            array[i] = input.nextInt();
        }
        HeapSort(array);
        for (int i = 0; i < num; i++) {
            System.out.print(array[i] + " ");
        }
    }

    public static void HeapSort(int[] array) {
        BuildHeap(array);
        for (int i = array.length - 1; i > 0; i--) {
            Swap(array, 0, i);
            Heapify(array, 0, i);
        }
    }
    public static void Heapify(int[] array, int i, int length) {
        int left = 2 * i + 1;
        int right = 2 * i + 2;
        int largest;
        if (left < length && array[left] > array[i]) {
            largest = left;
        } else {
            largest = i;
        }
        if (right < length && array[right] > array[largest]) {
            largest = right;
        }
        if (largest != i) {
            Swap(array, i, largest);
            Heapify(array, largest, length);
        }
    }
    public static void BuildHeap(int[] array) {
        for (int i = array.length / 2 - 1; i >= 0; i--) {
            Heapify(array, i, array.length);
        }
    }
    public static void Swap(int[] array, int i, int j) {
        int temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
}