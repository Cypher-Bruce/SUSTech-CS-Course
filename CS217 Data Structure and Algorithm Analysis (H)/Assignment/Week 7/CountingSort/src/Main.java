import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        int m = input.nextInt();
        short[] arr = new short[n];
        int[] cnt = new int[m+1];
        short[] ans = new short[n];

        for (int i = 0; i < n; i++) {
            arr[i] = input.nextShort();
            cnt[arr[i]]++;
        }

        for (int i = 1; i <= m; i++) {
            cnt[i] += cnt[i-1];
        }

        for (int i = n-1; i >= 0; i--) {
            ans[cnt[arr[i]]-1] = arr[i];
            cnt[arr[i]]--;
        }

        for (int i = 0; i < n; i++) {
            System.out.print(ans[i] + " ");
        }
    }
}
