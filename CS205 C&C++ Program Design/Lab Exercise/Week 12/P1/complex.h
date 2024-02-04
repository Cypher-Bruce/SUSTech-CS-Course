#include <iostream>
#ifndef COMPLEX_H
#define COMPLEX_H

class Complex{
    private:
        double real;
        double imag;
    public:
        Complex(): real(0), imag(0){};
        Complex(double r, double i): real(r), imag(i){};
        Complex operator~() const;
        Complex operator+(const Complex & c) const;
        Complex operator+(double n) const;
        Complex operator-(const Complex & c) const;
        Complex operator-(double n) const;
        Complex operator*(const Complex & c) const;
        Complex operator*(double n) const;
        bool operator==(const Complex & c) const;
        bool operator!=(const Complex & c) const;
        friend Complex operator+(double n, const Complex & c);
        friend Complex operator-(double n, const Complex & c);
        friend Complex operator*(double n, const Complex & c);
        friend std::ostream & operator<<(std::ostream & os, const Complex & c);
        friend std::istream & operator>>(std::istream & is, Complex & c);
};

#endif