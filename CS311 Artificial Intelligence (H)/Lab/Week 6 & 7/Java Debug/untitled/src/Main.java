import java.util.ArrayList;
public class Main {
    public static void main(String[] args) {
        int counter = 0;
        ArrayList<Point> action_stack = new ArrayList<Point>();
        action_stack.add(new Point(0, -1));
        while(!action_stack.isEmpty()) {
            Point last_action = action_stack.get(action_stack.size() - 1);
            action_stack.remove(action_stack.size() - 1);
            int last_x = last_action.x;
            int last_y = last_action.y;
            last_y++;
            while (last_y < 8){
                if (chess_simulator.is_valid_move(action_stack, new Point(last_x, last_y))){
                    action_stack.add(new Point(last_x, last_y));
                    if(action_stack.size() == 8) {
                        counter++;
                        System.out.println("Solution " + counter + ":");
                        for (Point action : action_stack) {
                            System.out.println("(" + action.x + ", " + action.y + ")");
                        }
                        System.out.println();
                        action_stack.remove(action_stack.size() - 1);
                    }else{
                        action_stack.add(new Point(last_x + 1, -1));
                    }
                    break;
                }
                last_y++;
            }
        }
    }
}

class chess_simulator {
    public static ArrayList<Point> get_valid_moves(ArrayList<Point> queens){
        ArrayList<Point> valid_moves = new ArrayList<Point>();
        int[][] board = new int[8][8];
        int[] dx = {1, 1, 1, 0, 0, -1, -1, -1};
        int[] dy = {1, 0, -1, 1, -1, 1, 0, -1};
        for (Point queen : queens){
            board[queen.x][queen.y] = 1;
            for (int i = 0; i < 8; i++){
                int x = queen.x;
                int y = queen.y;
                while (true){
                    x += dx[i];
                    y += dy[i];
                    if (x < 0 || x >= 8 || y < 0 || y >= 8){
                        break;
                    }
                    board[x][y] = 1;
                }
            }
        }
        for (int i = 0; i < 8; i++){
            for (int j = 0; j < 8; j++){
                if (board[i][j] == 0){
                    valid_moves.add(new Point(i, j));
                }
            }
        }
        return valid_moves;
    }
    public static boolean is_valid_move(ArrayList<Point> queens, Point move){
        ArrayList<Point> valid_moves = get_valid_moves(queens);
        for (Point valid_move : valid_moves){
            if (valid_move.x == move.x && valid_move.y == move.y){
                return true;
            }
        }
        return false;
    }
    public static boolean is_end_game(ArrayList<Point> queens) {
        int[] num_x = new int[8];
        int[] num_y = new int[8];
        int[] num_diag1 = new int[15];
        int[] num_diag2 = new int[15];
        for (Point queen : queens){
            num_x[queen.x]++;
            num_y[queen.y]++;
            num_diag1[queen.x + queen.y]++;
            num_diag2[queen.x - queen.y + 7]++;
        }
        for (int i = 0; i < 8; i++){
            if (num_x[i] > 1 || num_y[i] > 1){
                return false;
            }
        }
        for (int i = 0; i < 15; i++){
            if (num_diag1[i] > 1 || num_diag2[i] > 1){
                return false;
            }
        }
        return true;
    }
}

class Point {
    int x;
    int y;
    public Point(int x, int y){
        this.x = x;
        this.y = y;
    }
}