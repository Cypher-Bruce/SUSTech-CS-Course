import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        int[][] matrixA = new int[n][n];
        int[][] matrixB = new int[n][n];
        int[][] matrixC = new int[n][n];
        for (int i = 0; i < n; i++) {
            for (int j = 0 ; j < n; j++) {
                matrixA[i][j] = input.nextInt();
            }
        }
        for (int i = 0; i < n; i++) {
            for (int j = 0 ; j < n; j++) {
                matrixB[i][j] = input.nextInt();
            }
        }

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                for (int k = 0; k < n; k++) {
                    matrixC[i][j] += matrixA[i][k] * matrixB[k][j];
                }
                System.out.print(matrixC[i][j] + " ");
            }
            System.out.println();
        }

    }
}
