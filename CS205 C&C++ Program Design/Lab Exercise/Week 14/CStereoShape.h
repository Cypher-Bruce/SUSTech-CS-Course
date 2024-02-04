#include <iostream>
class CStereoShape{
private:
    static int numOfObject;
public:
    virtual double GetArea(){
        std::cout << "CStereoShape::GetArea()" << std::endl;
        return 0;
    }
    virtual double GetVolume(){
        std::cout << "CStereoShape::GetVolume()" << std::endl;
        return 0;
    }
    virtual void Show(){
        std::cout << "CStereoShape::Show()" << std::endl;
    }
    static int GetNumOfObject(){
        return numOfObject;
    }
    CStereoShape(){
        numOfObject++;
    }
    CStereoShape(const CStereoShape& s){
        numOfObject++;
    }
    virtual ~CStereoShape(){
        numOfObject--;
    }
};

int CStereoShape::numOfObject = 0;

class CCube: public CStereoShape{
private:
    double length;
    double width;
    double height;
public:
    CCube(): CStereoShape(), length(0), width(0), height(0){}
    CCube(double l, double w, double h): CStereoShape(), length(l), width(w), height(h){}
    CCube(const CCube& c): CStereoShape(), length(c.length), width(c.width), height(c.height){}
    double GetArea(){
        return 2 * (length * width + width * height + height * length);
    }
    double GetVolume(){
        return length * width * height;
    }
    void Show(){
        std::cout << "CCube::Show()" << std::endl;
        std::cout << "length: " << length << std::endl;
        std::cout << "width: " << width << std::endl;
        std::cout << "height: " << height << std::endl;
        std::cout << "area: " << GetArea() << std::endl;
        std::cout << "volume: " << GetVolume() << std::endl;
    }
    ~CCube(){}
};

class CSphere: public CStereoShape{
private:
    double radius;
public:
    CSphere(): CStereoShape(), radius(0){}
    CSphere(double r): CStereoShape(), radius(r){}
    CSphere(const CSphere& s): CStereoShape(), radius(s.radius){}
    double GetArea(){
        return 4 * 3.14159 * radius * radius;
    }
    double GetVolume(){
        return 4.0 / 3.0 * 3.14159 * radius * radius * radius;
    }
    void Show(){
        std::cout << "CSphere::Show()" << std::endl;
        std::cout << "radius: " << radius << std::endl;
        std::cout << "area: " << GetArea() << std::endl;
        std::cout << "volume: " << GetVolume() << std::endl;
    }
    ~CSphere(){}
};