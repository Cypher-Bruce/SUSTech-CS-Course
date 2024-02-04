#ifndef RECTANGLE_H
#define RECTANGLE_H

class Rectangle
{
    private:
        double width;
        double height;
        static int count;
    public:
        Rectangle(double, double);
        Rectangle();
        double getWidth() const;
        double getHeight() const;
        void setWidth(double);
        void setHeight(double);
        double getArea() const;
        double getPerimeter() const;
        static int getCount();
        void display() const;
};

#endif