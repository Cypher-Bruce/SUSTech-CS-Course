#include <iostream>
#include <vector>
#include <queue>
#include <algorithm>
#include <set>

using namespace std;

struct Student {
    int evaluation;
    int number;

    Student(int evaluation, int number) : evaluation(evaluation), number(number) {}

    bool operator<(const Student& other) const {
        return evaluation > other.evaluation;
    }
};

struct College {
    int evaluation;
    int number;

    College(int evaluation, int number) : evaluation(evaluation), number(number) {}

    bool operator<(const College& other) const {
        return evaluation < other.evaluation;
    }
};

int main() {
    int N, M;
    cin >> N >> M;

    vector<int> capacity(M);
    for (int i = 0; i < M; ++i) {
        cin >> capacity[i];
    }

    vector<vector<College>> sPref(N);
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < M; ++j) {
            int evaluation;
            cin >> evaluation;
            if (evaluation >= 0) {
                sPref[i].push_back(College(evaluation, j));
            }
        }
        sort(sPref[i].begin(), sPref[i].end());
    }

    vector<set<int>> cContain(M);
    vector<vector<int>> cPref(M, vector<int>(N));
    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < N; ++j) {
            int evaluation;
            cin >> evaluation;
            if (evaluation >= 0) {
                cPref[i][j] = evaluation;
                cContain[i].insert(j);
            }
        }
    }

    vector<priority_queue<Student>> cCurrent(M);
    queue<int> sFree;
    for (int i = 0; i < N; ++i) {
        sFree.push(i);
    }

    while (!sFree.empty()) {
        int s = sFree.front();
        sFree.pop();
        if (!sPref[s].empty()) {
            College c = sPref[s].back();
            sPref[s].pop_back();
            if (cContain[c.number].find(s) != cContain[c.number].end() && capacity[c.number] > 0) {
                if (cCurrent[c.number].size() < capacity[c.number]) {
                    cCurrent[c.number].push(Student(cPref[c.number][s], s));
                } else {
                    Student worst = cCurrent[c.number].top();
                    if (cPref[c.number][s] > worst.evaluation) {
                        sFree.push(worst.number);
                        cCurrent[c.number].pop();
                        cCurrent[c.number].push(Student(cPref[c.number][s], s));
                    } else {
                        sFree.push(s);
                    }
                }
            } else {
                sFree.push(s);
            }
        }
    }

    for (int i = 0; i < M; ++i) {
        cout << cCurrent[i].size() << " ";
        while (!cCurrent[i].empty()) {
            cout << cCurrent[i].top().number + 1 << " ";
            cCurrent[i].pop();
        }
        cout << endl;
    }

    return 0;
}
