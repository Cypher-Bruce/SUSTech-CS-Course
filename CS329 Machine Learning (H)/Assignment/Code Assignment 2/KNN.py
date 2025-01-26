import numpy as np

def euclidean_distance(a, b):
    return np.sqrt(np.sum((a - b) ** 2))

class KNN:
    def __init__(self, K):
        self.K = K
        self.X_train = None
        self.y_train = None
    
    def fit(self, X, y):
        self.X_train = X
        self.y_train = y
    
    def predict(self, X):
        distances = np.zeros((X.shape[0], self.X_train.shape[0]))
        for i in range(X.shape[0]):
            for j in range(self.X_train.shape[0]):
                distances[i, j] = euclidean_distance(X[i], self.X_train[j])
        
        predictions = []
        for i in range(X.shape[0]):
            k_indices = np.argsort(distances[i])[:self.K]
            k_nearest_labels = self.y_train[k_indices]
            most_common = np.bincount(k_nearest_labels).argmax()
            predictions.append(most_common)
        
        return np.array(predictions)

def main():
    # Read training data
    num_train = int(input())
    y_train = []
    X_train = []
    
    for _ in range(num_train):
        line = list(map(float, input().split()))
        y_train.append(int(line[0]))
        X_train.append(line[1:])

    X_train = np.array(X_train)
    y_train = np.array(y_train)

    # Train KNN classifiers
    knn3 = KNN(K=3)
    knn5 = KNN(K=5)
    knn7 = KNN(K=7)
    
    knn3.fit(X_train, y_train)
    knn5.fit(X_train, y_train)
    knn7.fit(X_train, y_train)

    # Read test data
    num_test = int(input())
    for _ in range(num_test):
        line = list(map(float, input().split()))
        Q = int(line[0])
        test_sample = np.array(line[1:])
        
        if Q == 3:
            prediction = knn3.predict(test_sample.reshape(1, -1))
        elif Q == 5:
            prediction = knn5.predict(test_sample.reshape(1, -1))
        elif Q == 7:
            prediction = knn7.predict(test_sample.reshape(1, -1))
        
        print(prediction[0])

if __name__ == "__main__":
    main()
