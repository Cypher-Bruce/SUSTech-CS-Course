#include "rectangle.h"
#include <iostream>

int Rectangle::count = 0;

Rectangle::Rectangle(double width, double height){
    this->width = width;
    this->height = height;
    count++;
}

Rectangle::Rectangle(){
    width = 1;
    height = 1;
    count++;
}

double Rectangle::getWidth() const{
    return width;
}

double Rectangle::getHeight() const{
    return height;
}

void Rectangle::setWidth(double width){
    this->width = width;
}

void Rectangle::setHeight(double height){
    this->height = height;
}

double Rectangle::getArea() const{
    return width * height;
}

double Rectangle::getPerimeter() const{
    return 2 * (width + height);
}

int Rectangle::getCount(){
    return count;
}

void Rectangle::display() const{
    std::cout << "    Rectangle Info    " << std::endl;
    std::cout << "----------------------" << std::endl;
    std::cout << "Width: " << width << std::endl;
    std::cout << "Height: " << height << std::endl;
    std::cout << "Perimeter: " << getPerimeter() << std::endl;
    std::cout << "Area: " << getArea() << std::endl;
}
