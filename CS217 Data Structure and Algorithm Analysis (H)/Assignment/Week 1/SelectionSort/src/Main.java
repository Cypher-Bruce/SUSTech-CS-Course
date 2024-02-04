import java.util.Scanner;

public class Main{
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        int length = input.nextInt();
        int[] array = new int[length];
        for (int i = 0; i < length; i++){
            array[i] = input.nextInt();
        }
        for (int i = 0; i < length - 1; i++){
            int smallest = i;
            for (int j = i; j < length; j++){
                if(array[j] < array[smallest]){
                    smallest = j;
                }
            }
            int temp = array[i];
            array[i] = array[smallest];
            array[smallest] = temp;
        }
        for (int i = 0; i < length; i++){
            System.out.print(array[i] + " ");
        }
    }
}
