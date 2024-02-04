class MatrixData {
public:
    int row;
    int col;
    float *data;
    int refcnt;
    MatrixData(int row, int col);
    ~MatrixData();
};

class Matrix {
private:
    MatrixData *md;
public:
    Matrix(int row, int col);
    ~Matrix();
    Matrix(const Matrix &m);
    float &operator()(int i, int j);
    const float &operator()(int i, int j) const;
    Matrix operator+(const Matrix &m) const;
};