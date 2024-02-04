#include <cmath>

class Point {
private:
double x, y;
public:
Point(double newX, double newY);
double getX() const;
double getY() const;
};

class Line
{
private:
Point p1, p2;
double distance;
public:
Line(Point xp1, Point xp2);
Line(Line& q);
double getDistance() const;
};

Point::Point(double newX, double newY){
    x = newX;
    y = newY;
}

double Point::getX() const{
    return x;
}

double Point::getY() const{
    return y;
}

Line::Line(Point xp1, Point xp2):p1(xp1), p2(xp2){
    double x1 = p1.getX();
    double x2 = p2.getX();
    double y1 = p1.getY();
    double y2 = p2.getY();
    distance = sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2));
}

Line::Line(Line& q):p1(q.p1), p2(q.p2){
    distance = q.distance;
}

double Line::getDistance() const{
    return distance;
}