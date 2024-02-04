#include <iostream>
#include <string>

using namespace std;

const int MAX_ROWS = 10; // Maximum number of rows in the maze
const int MAX_COLS = 10; // Maximum number of columns in the maze
const int MAX_DIRS = 100; // Maximum number of directions

string exitMaze(int maze[MAX_ROWS][MAX_COLS], string directions[], int numDirections) {
    int currentX = 9;
    int currentY = 8;
    for (int i = 0; i < numDirections; ++i) {
        if(directions[i] == "N"){
            currentX--;
        }else if(directions[i] == "S"){
            currentX++;
        }else if(directions[i] == "W"){
            currentY--;
        }else{
            currentY++;
        }

        if(currentX < 0 || currentX >= MAX_ROWS || currentY < 0 || currentY >= MAX_COLS || maze[currentX][currentY] == 1){
            return "Dead";
        }else if(currentX == 1 && currentY == 1){
            return "Finish";
        }
    }
    return "Lost";
}

int main() {
    int maze[MAX_ROWS][MAX_COLS] = {
            {1, 1, 1, 1, 1, 1, 1, 1, 0, 1},
            {1, 3, 1, 0, 1, 0, 0, 0, 0, 1},
            {1, 0, 1, 0, 0, 0, 1, 1, 0, 1},
            {1, 0, 1, 1, 1, 1, 1, 0, 0, 1},
            {1, 0, 1, 0, 0, 0, 0, 0, 0, 1},
            {1, 0, 1, 0, 1, 0, 1, 0, 0, 1},
            {1, 0, 1, 0, 1, 0, 0, 0, 0, 0},
            {1, 0, 1, 0, 1, 0, 1, 1, 0, 1},
            {1, 0, 0, 0, 1, 0, 0, 0, 0, 1},
            {1, 1, 1, 0, 1, 1, 1, 1, 2, 1}
    };

    string directions[MAX_DIRS];
    int numDirections = 0;
    string input = "";

// Enter directions (N, E, S, W), one per line. Enter ' ' to finish input
    while (numDirections < MAX_DIRS) {
        getline(cin,input);
        if (input == "") {
            break;
        }
        if (input == "N" || input == "E" || input == "S" || input == "W") {
            directions[numDirections++] = input;
        } else {
            cout << "Invalid direction entered. Please enter N, E, S, or W." << endl;
        }
    }

    string result = exitMaze(maze, directions, numDirections);
    cout << "Result: " << result << endl;

    return 0;
}
