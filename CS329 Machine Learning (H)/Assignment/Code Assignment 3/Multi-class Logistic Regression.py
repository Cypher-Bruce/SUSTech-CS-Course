import numpy as np

class SoftmaxRegression:
    def __init__(self, input_dim, num_classes, learning_rate):
        self.w = np.zeros((input_dim + 1, num_classes))
        self.learning_rate = learning_rate

    def softmax(self, z):
        exp = np.exp(z)
        return exp / np.sum(exp, axis=1, keepdims=True)

    def add_bias(self, X):
        return np.hstack([X, np.ones((X.shape[0], 1))])

    def fit(self, X, y, epochs):
        X = self.add_bias(X)
        m = X.shape[0]

        for _ in range(epochs):
            z = np.dot(X, self.w)
            y_pred = self.softmax(z)

            grad = np.dot(X.T, (y_pred - y)) / m
            
            self.w -= self.learning_rate * grad

hyperparameters = input().split()
num_train = int(hyperparameters[0])
num_feature = int(hyperparameters[1])
num_target = int(hyperparameters[2])
num_epoch = int(hyperparameters[3])
learning_rate = float(hyperparameters[4])

X_data = np.array([list(map(float, input().split())) for _ in range(num_train)])
Y_data = np.array([list(map(float, input().split())) for _ in range(num_train)])

assert X_data.shape == (num_train, num_feature)
assert Y_data.shape == (num_train, num_target)

model = SoftmaxRegression(num_feature, num_target, learning_rate)
model.fit(X_data, Y_data, num_epoch)

for weight in model.w.reshape(-1):
    print("{:.3f}".format(weight))
