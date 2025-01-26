import numpy as np

def main():
    n_train, n_test = map(int, input().split())
    x_train = np.zeros(n_train)
    y_train = np.zeros(n_train)
    x_test = np.zeros(n_test)
    for i in range(n_train):
        x_train[i], y_train[i] = map(float, input().split())
    for i in range(n_test):
        x_test[i] = float(input())

    degree = 3
    x_train_poly = np.zeros((n_train, degree + 1))
    x_test_poly = np.zeros((n_test, degree + 1))
    for i in range(degree + 1):
        x_train_poly[:, i] = x_train ** i
        x_test_poly[:, i] = x_test ** i

    parameter = np.linalg.inv(x_train_poly.T @ x_train_poly) @ x_train_poly.T @ y_train

    for x in x_test_poly:
        print(x @ parameter)
        

if __name__ == '__main__':
    main()