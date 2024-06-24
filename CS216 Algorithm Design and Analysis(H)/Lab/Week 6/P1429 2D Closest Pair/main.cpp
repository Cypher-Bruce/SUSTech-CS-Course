#include <iostream>
#include <cmath>
#include <vector>
#include <algorithm>
using namespace std;
const int MAX_NODE = 2E5 + 5;
const long long INF = 2E18;
struct Point{
    int x, y;
};
Point points[MAX_NODE];

int comp_x(const Point &a, const Point &b) {
    if(a.x == b.x) {
        return a.y < b.y;
    }
    return a.x < b.x;
}

int comp_y(const Point &a, const Point &b) {
    if(a.y == b.y) {
        return a.x < b.x;
    }
    return a.y < b.y;
}

long long dist(const Point &a, const Point &b) {
    return (long long)(a.x - b.x) * (a.x - b.x) + (long long)(a.y - b.y) * (a.y - b.y);
}

long long closest_pair(int left, int right) {
    if(left == right) {
        return INF;
    }
    if(left + 1 == right) {
        return dist(points[left], points[right]);
    }
    int m = (left + right) >> 1;
    long long min_dist = min(closest_pair(left, m), closest_pair(m + 1, right));
    vector<Point> tmp;
    for (int i = left; i <= right; ++i) {
        if((long long)(points[i].x - points[m].x) * (points[i].x - points[m].x) <= min_dist) {
            tmp.push_back(points[i]);
        }
    }
    sort(tmp.begin(), tmp.end(), comp_y);
    for (int i = 0; i < tmp.size(); ++i) {
        for (int j = i + 1; j < tmp.size(); ++j) {
            if((long long)(tmp[j].y - tmp[i].y) * (tmp[j].y - tmp[i].y) > min_dist) {
                break;
            }
            min_dist = min(min_dist, dist(tmp[i], tmp[j]));
        }
    }
    return min_dist;
}

int main() {
    int n;
    scanf("%d", &n);
    for (int i = 0; i < n; ++i) {
        scanf("%d %d", &points[i].x, &points[i].y);
    }
    sort(points, points + n, comp_x);
    printf("%.4f\n", sqrt(closest_pair(0, n - 1)));
    return 0;
}
