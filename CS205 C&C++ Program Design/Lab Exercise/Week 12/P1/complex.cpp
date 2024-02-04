#include "complex.h"

Complex Complex::operator~() const{
    return Complex(real, -imag);
}

Complex Complex::operator+(const Complex & c) const{
    return Complex(real + c.real, imag + c.imag);
}

Complex Complex::operator+(double n) const{
    return Complex(real + n, imag);
}

Complex Complex::operator-(const Complex & c) const{
    return Complex(real - c.real, imag - c.imag);
}

Complex Complex::operator-(double n) const{
    return Complex(real - n, imag);
}

Complex Complex::operator*(const Complex & c) const{
    return Complex(real * c.real - imag * c.imag, real * c.imag + imag * c.real);
}

Complex Complex::operator*(double n) const{
    return Complex(real * n, imag * n);
}

bool Complex::operator==(const Complex & c) const{
    return (real == c.real && imag == c.imag);
}

bool Complex::operator!=(const Complex & c) const{
    return !(*this == c);
}

Complex operator+(double n, const Complex & c){
    return Complex(n + c.real, c.imag);
}

Complex operator-(double n, const Complex & c){
    return Complex(n - c.real, -c.imag);
}

Complex operator*(double n, const Complex & c){
    return Complex(n * c.real, n * c.imag);
}

std::ostream & operator<<(std::ostream & os, const Complex & c){
    os << c.real;
    if(c.imag != 0){
        if(c.imag > 0){
            os << "+";
        }
        os << c.imag << "i";
    }
    return os;
}

std::istream & operator>>(std::istream & is, Complex & c){
    is >> c.real;
    is >> c.imag;
    return is;
}
