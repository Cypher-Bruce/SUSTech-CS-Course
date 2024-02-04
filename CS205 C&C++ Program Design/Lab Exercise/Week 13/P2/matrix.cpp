#include "matrix.h"

MatrixData::MatrixData(int r, int c) {
    row = r;
    col = c;
    data = new float[row * col];
}

MatrixData::~MatrixData() {
    delete[] data;
}

Matrix::Matrix(int r, int c) {
    md = new MatrixData(r, c);
    md->refcnt = 1;
}

Matrix::~Matrix() {
    md->refcnt--;
    if (md->refcnt == 0) {
        delete md;
    }
}

Matrix::Matrix(const Matrix &m) {
    md = new MatrixData(m.md->row, m.md->col);
    for (int i = 0; i < md->row; i++) {
        for (int j = 0; j < md->col; j++) {
            md[i * md->col + j] = m.md[i * md->col + j];
        }
    }
    md->refcnt = 1;
}

float &Matrix::operator()(int i, int j) {
    return md->data[i * md->col + j];
}

const float &Matrix::operator()(int i, int j) const {
    return md->data[i * md->col + j];
}

Matrix Matrix::operator+(const Matrix &m) const {
    Matrix temp(md->row, md->col);
    for (int i = 0; i < md->row; i++) {
        for (int j = 0; j < md->col; j++) {
            temp(i, j) = (*this)(i, j) + m(i, j);
        }
    }
    return temp;
}