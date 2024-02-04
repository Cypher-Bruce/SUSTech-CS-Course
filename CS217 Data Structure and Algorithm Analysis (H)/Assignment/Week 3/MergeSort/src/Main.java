import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        int[] array = new int[n];
        for (int i = 0; i < n; i++) {
            array[i] = input.nextInt();
        }
        mergeSort(array, 0, n-1);
        for (int i = 0; i <n; i++) {
            System.out.print(array[i] + " ");
        }
    }

    public static void mergeSort(int[] array, int low, int high){
        if (low < high){
            int mid = (low + high) / 2;
            mergeSort(array, low, mid);
            mergeSort(array, mid+1, high);
            merge(array, low, mid, high);
        }
    }

    public static void merge(int[] array, int low, int mid, int high){
        int[] temp1 = new int[mid - low + 1];
        for (int i = 0; i < temp1.length; i++) {
            temp1[i] = array[low + i];
        }
        int[] temp2 = new int[high - mid];
        for (int i = 0; i < temp2.length; i++) {
            temp2[i] = array[mid + 1 + i];
        }
        int length1 = temp1.length;
        int length2 = temp2.length;

        int insertPoint1 = 0;
        int insertPoint2 = 0;
        int insertPoint3 = low;
        while(insertPoint1 < length1 && insertPoint2 < length2){
            if(temp1[insertPoint1] <= temp2[insertPoint2]){
                array[insertPoint3] = temp1[insertPoint1];
                insertPoint1++;
            }else{
                array[insertPoint3] = temp2[insertPoint2];
                insertPoint2++;
            }
            insertPoint3++;
        }

        while(insertPoint1 < length1){
            array[insertPoint3] = temp1[insertPoint1];
            insertPoint1++;
            insertPoint3++;
        }

        while(insertPoint2 < length2){
            array[insertPoint3] = temp2[insertPoint2];
            insertPoint2++;
            insertPoint3++;
        }
    }
}
