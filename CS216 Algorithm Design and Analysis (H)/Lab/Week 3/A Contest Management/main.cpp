#include <iostream>
#include <queue>
#include <cstring>
#include <algorithm>

using namespace std;

int n;
int deadlines[1000];
int penalties[1000];

struct Game{
    int deadline;
    int penalty;
    Game(int d, int p): deadline(d), penalty(p) {}
    bool operator<(const Game& g) const {
        if(penalty == g.penalty){
            return deadline < g.deadline;
        }
        return penalty < g.penalty;
    }
};

int func1(){
    int maxDeadline = 0;
    priority_queue<Game> games;
    for (int i = 0; i < n; i++) {
        maxDeadline = max(maxDeadline, deadlines[i]);
    }
    for (int i = 0; i < n; i++) {
        games.push(Game(deadlines[i], penalties[i]));
    }

    int totalPenalty = 0;
    bool gameChoice[maxDeadline + 1];
    memset(gameChoice, 0, sizeof(gameChoice));
    while (!games.empty()) {
        Game g = games.top();
        games.pop();
        int d = g.deadline;
        while (d > 0 && gameChoice[d]) {
            d--;
        }
        if (d > 0) {
            gameChoice[d] = true;
        } else {
            totalPenalty += g.penalty;
        }
    }
    return totalPenalty;
}

void print_min_heap(vector<vector<int>> &mh)
{
    for (int i = 0; i < mh.size(); i++)
    {
        cout << "[" << mh[i][0] << "," << mh[i][1] << "]" << endl;
    }
}

int func2()
{
    vector<vector<int>> games(n, vector<int>(2));
    vector<vector<int>> mh(0, vector<int>(2));
    vector<vector<int>> result(0, vector<int>(2));
    make_heap(mh.begin(), mh.end(), [](const vector<int> &a, const vector<int> &b)
    { return a[1] > b[1]; });

    // Inputs
    for (int i = 0; i < n; i++)
    {
        games[i][0] = deadlines[i];
    }
    for (int i = 0; i < n; i++)
    {
        games[i][1] = penalties[i];
    }
    sort(games.begin(), games.end(), [](vector<int> a, vector<int> b)
    { return (a[0] == b[0]) ? (a[1] > b[1]) : (a[0] < b[0]); });

    int pointer = 0;
    for (int i = 1; i <= n; i++)
    {
        while (pointer < n && games[pointer][0] == i)
        {
            //cout << "Pointer: " << pointer << " i: " << i << endl;
            if (mh.size() < i)
            {
                //cout << "Pushing: [" << games[pointer][0] << " " << games[pointer][1] << "]" << endl;
                mh.push_back(games[pointer]);
                push_heap(mh.begin(), mh.end(), [](const vector<int> &a, const vector<int> &b)
                { return a[1] > b[1]; });
                //print_min_heap(mh);
            }
            else if (mh.size() == i && mh.front()[1] < games[pointer][1])
            {
                //cout << "Popping: [" << mh.front()[0] << " " << mh.front()[1] << "]";
                pop_heap(mh.begin(), mh.end(), [](const vector<int> &a, const vector<int> &b)
                { return a[1] > b[1]; });
                result.push_back(mh.back());
                mh.pop_back();

                //cout << " Pushing: [" << games[pointer][0] << " " << games[pointer][1] << "]" << endl;
                mh.push_back(games[pointer]);
                push_heap(mh.begin(), mh.end(), [](const vector<int> &a, const vector<int> &b)
                { return a[1] > b[1]; });
                //print_min_heap(mh);
            }
            else
            {
                result.push_back(games[pointer]);
            }
            pointer++;
        }
    }

    //cout << endl;
    int penalties = 0;
    for(int i = 0; i < result.size(); i++){
        //cout << "[" << result[i][0] << " " << result[i][1] << "]" << " ";
        penalties += result[i][1];
    }
    //cout << endl;
    //cout << penalties << endl;
    return penalties;
}

int main(){
    srand(time(0));
    n = 10;
    for (int i = 0; i < n; ++i) {
        deadlines[i] = rand() % (n/2) + 1;
        cout << deadlines[i] << " ";
    }
    cout << endl;
    for (int i = 0; i < n; ++i) {
        penalties[i] = rand() % 100;
        cout << penalties[i] << " ";
    }
    cout << endl;
    cout << func1() << endl;
    cout << func2() << endl;
}