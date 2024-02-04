import java.util.Scanner;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int N = input.nextInt();
        int[] values = new int[N + 1];
        int[] maxValues = new int[N + 1];
        int[] cuts = new int[N + 1];
        for (int i = 1; i <= N; i++) {
            values[i] = input.nextInt();
        }
        values[0] = 0;
        maxValues[0] = 0;

        for (int i = 1; i <= N ; i++) {
            int max = values[i];
            int cut = i;
            for (int j = 1; j <= i - 1; j++) {
                if (max < maxValues[j] + maxValues[i - j]) {
                    max = maxValues[j] + maxValues[i - j];
                    cut = j;
                }
            }
            maxValues[i] = max;
            cuts[i] = cut;
        }

        System.out.println(maxValues[N]);

        int cut_count = 0;
        int[] cut_values = new int[N + 1];
        while (N > 0) {
            cut_count++;
            cut_values[cut_count] = cuts[N];
            N -= cuts[N];
        }
        Arrays.sort(cut_values, 1, cut_count);

        System.out.println(cut_count);
        for (int i = 1; i <= cut_count; i++) {
            System.out.print(cut_values[i] + " ");
        }

    }
}
