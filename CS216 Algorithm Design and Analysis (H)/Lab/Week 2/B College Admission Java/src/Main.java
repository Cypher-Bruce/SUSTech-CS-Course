import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int N = input.nextInt();
        int M = input.nextInt();

        int[] capacity = new int[M];
        for (int i = 0; i < M; i++) {
            capacity[i] = input.nextInt();
        }

        List<College>[] sPref = new List[N];
        for (int i = 0; i < N; i++) {
            sPref[i] = new ArrayList<>();
            for (int j = 0; j < M; j++) {
                int evaluation = input.nextInt();
                if (evaluation >= 0) {
                    sPref[i].add(new College(evaluation, j));
                }
            }
            sPref[i].sort((a, b) -> b.evaluation - a.evaluation);
        }

        boolean[][] cContain = new boolean[M][N];
        int[][] cPref = new int[M][N];
        for (int i = 0; i < M; i++) {
            for (int j = 0; j < N; j++) {
                int evaluation = input.nextInt();
                if (evaluation >= 0) {
                    cPref[i][j] = evaluation;
                    cContain[i][j] = true;
                }
            }
        }

        List<Student>[] cCurrent = new List[M];
        for (int i = 0; i < M; i++) {
            cCurrent[i] = new ArrayList<>();
        }

        Queue<Integer> sFree = new LinkedList<>();
        for (int i = 0; i < N; i++) {
            sFree.add(i);
        }

        while (!sFree.isEmpty()) {
            int s = sFree.poll();
            if (!sPref[s].isEmpty()) {
                College c = sPref[s].remove(0);
                if (cContain[c.number][s]) {
                    if (cCurrent[c.number].size() < capacity[c.number]) {
                        cCurrent[c.number].add(new Student(cPref[c.number][s], s));
                    } else {
                        cCurrent[c.number].sort((a, b) -> a.evaluation - b.evaluation);
                        Student worst = cCurrent[c.number].get(0);
                        if (cPref[c.number][s] > worst.evaluation) {
                            sFree.add(worst.number);
                            cCurrent[c.number].remove(0);
                            cCurrent[c.number].add(new Student(cPref[c.number][s], s));
                        } else {
                            sFree.add(s);
                        }
                    }
                } else {
                    sFree.add(s);
                }
            }
        }

        for (int i = 0; i < M; i++) {
            System.out.print(cCurrent[i].size() + " ");
            cCurrent[i].sort((a, b) -> a.number - b.number);
            for (Student student : cCurrent[i]) {
                System.out.print((student.number + 1) + " ");
            }
            System.out.println();
        }
    }
}

class Student {
    int evaluation;
    int number;

    public Student(int evaluation, int number) {
        this.evaluation = evaluation;
        this.number = number;
    }
}

class College {
    int evaluation;
    int number;

    public College(int evaluation, int number) {
        this.evaluation = evaluation;
        this.number = number;
    }
}
