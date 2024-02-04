import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int n = input.nextInt();
        activity[] activities = new activity[n];
        for (int i = 0; i < n; i++) {
            activities[i] = new activity();
        }
        for (int i = 0; i < n; i++) {
            activities[i].start = input.nextInt();
        }
        for (int i = 0; i < n; i++) {
            activities[i].end = input.nextInt();
        }

        Arrays.sort(activities);

        int count = 1;
        int current = 0;
        for (int i = 1; i < n; i++) {
            if (activities[i].start >= activities[current].end) {
                count++;
                current = i;
            }
        }
        System.out.println(count);
    }
}

class activity implements Comparable<activity> {
    int start;
    int end;

    @Override
    public int compareTo(activity o) {
        return this.end - o.end;
    }
}