import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        int len = input.nextInt();
        String[] arr = new String[n];

        for (int i = 0; i < n; i++) {
            arr[i] = input.next();
        }

        for (int i = len - 1; i >= 0; i--) {
            int[] cnt = new int[26];
            for (int j = 0; j < n; j++) {
                cnt[arr[j].charAt(i) - 'A']++;
            }

            for (int j = 1; j < 26; j++) {
                cnt[j] += cnt[j - 1];
            }

            String[] temp = new String[n];

            for (int j = n - 1; j >= 0; j--) {
                temp[cnt[arr[j].charAt(i) - 'A']-1] = arr[j];
                cnt[arr[j].charAt(i) - 'A']--;
            }

            arr = temp;

            for (int j = 0; j < n; j++) {
                System.out.println(arr[j]);
            }
            System.out.println();
        }


    }
}
