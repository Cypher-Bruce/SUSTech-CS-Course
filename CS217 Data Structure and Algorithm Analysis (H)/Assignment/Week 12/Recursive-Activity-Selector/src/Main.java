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

        System.out.println(selectActivity(0, activities, n));
    }
    static int selectActivity(int i, activity[] activities, int n) {
        int j = i + 1;
        while (j < n && activities[j].start < activities[i].end) {
            j++;
        }
        if (j < n) {
            return selectActivity(j, activities, n) + 1;
        } else {
            return 1;
        }
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