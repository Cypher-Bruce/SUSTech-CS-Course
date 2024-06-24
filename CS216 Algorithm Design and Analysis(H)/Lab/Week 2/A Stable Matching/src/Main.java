import java.util.HashMap;
import java.util.Scanner;
import java.util.Stack;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int N = input.nextInt();
        HashMap<String, Integer> bNameToNumber = new HashMap<String, Integer>();
        HashMap<Integer, String> bNumberToName = new HashMap<Integer, String>();
        HashMap<String, Integer> gNameToNumber = new HashMap<String, Integer>();
        HashMap<Integer, String> gNumberToName = new HashMap<Integer, String>();
        int[][] bPref = new int[N][N];
        int[][] bPrefInverse = new int[N][N];
        int[][] gPref = new int[N][N];
        int[][] gPrefInverse = new int[N][N];
        for (int i = 0; i < N; i++) {
            String name = input.next();
            bNameToNumber.put(name, i);
            bNumberToName.put(i, name);
        }
        for (int i = 0; i < N; i++) {
            String name = input.next();
            gNameToNumber.put(name, i);
            gNumberToName.put(i, name);
        }
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                String name = input.next();
                bPref[i][j] = gNameToNumber.get(name);
                bPrefInverse[i][bPref[i][j]] = j;
            }
        }
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                String name = input.next();
                gPref[i][j] = bNameToNumber.get(name);
                gPrefInverse[i][gPref[i][j]] = j;
            }
        }
        int[] bCurrent = new int[N];
        int[] gCurrent = new int[N];
        Stack<Integer> bFree = new Stack<Integer>();
        for (int i = 0; i < N; i++) {
            bFree.push(i);
            gCurrent[i] = -1;
        }
        while(!bFree.isEmpty()){
            int b = bFree.pop();
            int g = bPref[b][bCurrent[b]];
            bCurrent[b]++;
            if (gCurrent[g] == -1) {
                gCurrent[g] = b;
            } else if (gPrefInverse[g][b] < gPrefInverse[g][gCurrent[g]]) {
                bFree.push(gCurrent[g]);
                gCurrent[g] = b;
            } else {
                bFree.push(b);
            }
        }
        for (int i = 0; i < N; i++) {
            System.out.println(bNumberToName.get(gCurrent[i]) + " " + gNumberToName.get(i));
        }
    }
}
