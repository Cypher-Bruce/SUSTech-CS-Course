import java.util.Scanner;

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

        System.out.println(cutRod(values, maxValues, cuts, N));

        int cut_cnt = 0;
        int[] cutValues = new int[N + 1];
        while (N > 0) {
            cut_cnt++;
            cutValues[cut_cnt] = cuts[N];
            N -= cuts[N];
        }

        System.out.println(cut_cnt);
        for (int i = 1; i <= cut_cnt; i++) {
            System.out.print(cutValues[i] + " ");
        }
    }

    public static int cutRod(int[] values, int[] maxValues, int[] cuts, int N) {
        if (maxValues[N] != 0) {
            return maxValues[N];
        }
        if (N == 0) {
            return 0;
        }
        int maxValue = Integer.MIN_VALUE;
        for (int i = 1; i <= N; i++) {
            int value = values[i] + cutRod(values, maxValues, cuts, N - i);
            if (value > maxValue) {
                maxValue = value;
                cuts[N] = i;
            }
        }
        maxValues[N] = maxValue;
        return maxValue;
    }
}
