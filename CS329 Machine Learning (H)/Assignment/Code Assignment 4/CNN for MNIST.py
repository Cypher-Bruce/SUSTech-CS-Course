import numpy as np
from typing import List

class Layer:
    """
    The template class of network layers. You don't need to modify this.
    """
    def get_params(self):
        return

    def set_params(self, w, b):
        pass

    def get_grads(self):
        return

    def zero_grad(self):
        pass

    def forward(self, x):
        pass

    def backward(self, da):
        pass

class Conv2d(Layer):
    def __init__(self, in_channels, out_channels, kernel_size=(3, 3), stride=1, padding=(0, 0)):
        """
        Similar to PyTorch Conv2d. Here bias=True, and padding_mode='zeros'.
        """
        self.c_in = in_channels
        self.c_out = out_channels
        self.kernel_size = kernel_size
        self.stride = stride
        self.padding = padding

        # init params
        self.w = np.random.randn(out_channels, in_channels,
                                 kernel_size[0], kernel_size[1]) * 0.1
        self.b = np.random.randn(out_channels) * 0.1
        self.dw = np.zeros_like(self.w)
        self.db = np.zeros_like(self.b)

        self.x_pad = None
        self.h_in = None
        self.w_in = None

    def get_params(self):
        return self.w, self.b

    def set_params(self, w, b):
        self.w = w
        self.b = b

    def get_grads(self):
        return self.dw, self.db

    def zero_grad(self):
        self.dw = np.zeros_like(self.w)
        self.db = np.zeros_like(self.b)

    @staticmethod
    def compute_output_dims(h_in, w_in, h_f, w_f, h_p, w_p, stride):
        """
        Compute the height and the width of the output tensor.
        """
        h_out = (h_in + 2 * h_p - h_f) // stride + 1
        w_out = (w_in + 2 * w_p - w_f) // stride + 1

        return h_out, w_out

    def forward(self, x):
        """
        x: 4D array (batch_size, channel, height, width)
        """
        batch_size, c_in, h_in, w_in = x.shape
        h_f, w_f = self.kernel_size
        h_p, w_p = self.padding
        h_out, w_out = self.compute_output_dims(
            h_in, w_in, h_f, w_f, h_p, w_p, self.stride)

        # padding
        x_pad = np.pad(array=x, pad_width=(
            (0, 0), (0, 0), (h_p, h_p), (w_p, w_p)))

        # 2D convolution
        out = np.zeros((batch_size, self.c_out, h_out, w_out))
        for i in range(h_out):
            h_start = i * self.stride
            h_end = h_start + h_f
            for j in range(w_out):
                w_start = j * self.stride
                w_end = w_start + w_f

                out[:, :, i, j] = np.sum(
                    self.w * x_pad[:, np.newaxis, :,
                                   h_start:h_end, w_start:w_end],
                    axis=(2, 3, 4)
                )

        # bias
        out += self.b.repeat(h_out * w_out).reshape(-1, h_out, w_out)

        # cache for backpropagation
        self.x_pad = x_pad.copy()
        self.h_in = h_in
        self.w_in = w_in

        return out

    def backward(self, da):
        """
        da: 4D array (batch_size, channel, height, width)
        """
        batch_size, c_out, h_out, w_out = da.shape
        h_f, w_f = self.kernel_size
        h_p, w_p = self.padding

        db = np.zeros_like(self.b)
        dw = np.zeros_like(self.w)  # (c_out, c_in, h_f, w_f)
        out = np.zeros_like(self.x_pad)
        
        db = np.sum(da, axis=(0, 2, 3)) / batch_size

        for i in range(h_out):
            h_start = i * self.stride
            h_end = h_start + h_f
            for j in range(w_out):
                w_start = j * self.stride
                w_end = w_start + w_f

                dw += np.sum(
                    da[:, :, i, j][:, :, np.newaxis, np.newaxis, np.newaxis] *
                    self.x_pad[:, np.newaxis, :,
                                h_start:h_end, w_start:w_end],
                    axis=0
                )

                out[:, :, h_start:h_end, w_start:w_end] += np.sum(
                    da[:, :, i, j][:, :, np.newaxis, np.newaxis, np.newaxis] *
                    self.w[np.newaxis, :, :, :, :],
                    axis=1
                )

        dw /= batch_size
        out = out[:, :, h_p:-h_p, w_p:-w_p]

        self.dw += dw
        self.db += db

        return out

class MaxPool2d(Layer):
    def __init__(self, kernel_size=(3, 3), stride=1):
        self.kernel_size = kernel_size
        self.stride = stride
        self.h_in = None
        self.w_in = None
        self.max_indices = None

    @staticmethod
    def compute_output_dims(h_in, w_in, h_f, w_f, stride):
        """
        Compute the height and the width of the output tensor.
        """
        h_out = (h_in - h_f) // stride + 1
        w_out = (w_in - w_f) // stride + 1

        return h_out, w_out

    def forward(self, x):
        """
        x: 4D array (batch_size, channel, height, width)
        """
        batch_size, c_in, h_in, w_in = x.shape
        h_f, w_f = self.kernel_size
        h_out, w_out = self.compute_output_dims(
            h_in, w_in, h_f, w_f, self.stride)
        
        # cache for backpropagation
        self.max_indices = np.zeros(
            (batch_size, c_in, h_out, w_out), dtype=int)
        self.h_in = h_in
        self.w_in = w_in
        
        # max pooling
        out = np.zeros((batch_size, c_in, h_out, w_out))
        
        # complete your code here
        for i in range(h_out):
            h_start = i * self.stride
            h_end = h_start + h_f
            for j in range(w_out):
                w_start = j * self.stride
                w_end = w_start + w_f

                # Extract patch and find max value and index
                patch = x[:, :, h_start:h_end, w_start:w_end]
                max_vals = np.max(patch, axis=(2, 3))
                max_indices = np.argmax(patch.reshape(batch_size, c_in, -1), axis=2)

                # Store results
                out[:, :, i, j] = max_vals
                self.max_indices[:, :, i, j] = max_indices
        return out

    def backward(self, da):
        """
        da: 4D array (batch_size, channel, height, width)
        """
        batch_size, c_out, h_out, w_out = da.shape
        h_f, w_f = self.kernel_size

        out = np.zeros((batch_size, c_out, self.h_in, self.w_in))
        
        for i in range(h_out):
            h_start = i * self.stride
            h_end = h_start + h_f
            for j in range(w_out):
                w_start = j * self.stride
                w_end = w_start + w_f

                patch_grad = np.zeros((batch_size, c_out, h_f, w_f))
                max_indices = self.max_indices[:, :, i, j]

                for n in range(batch_size):
                    for c in range(c_out):
                        max_idx = max_indices[n, c]
                        h_idx = max_idx // w_f
                        w_idx = max_idx % w_f
                        patch_grad[n, c, h_idx, w_idx] = da[n, c, i, j]

                out[:, :, h_start:h_end, w_start:w_end] += patch_grad
        
        return out


class Flatten(Layer):
    """
    Flatten the array to one dimension.
    """
    def __init__(self):
        self.shape = None

    def forward(self, x):
        self.shape = x.shape
        out = x.reshape(x.shape[0], -1)
        return out

    def backward(self, da):
        return da.reshape(self.shape)

class FullyConnected(Layer):
    """
    Similar to PyTorch Linear.
    """
    def __init__(self, in_features, out_features):
        # init params
        self.w = np.random.randn(out_features, in_features) * 0.1
        self.b = np.random.randn(out_features) * 0.1
        self.dw = np.zeros_like(self.w)
        self.db = np.zeros_like(self.b)
        self.x = None

    def get_params(self):
        return self.w, self.b

    def set_params(self, w, b):
        self.w = w
        self.b = b

    def get_grads(self):
        return self.dw, self.db

    def zero_grad(self):
        self.dw = np.zeros_like(self.w)
        self.db = np.zeros_like(self.b)

    def forward(self, x):
        """
        x: 2D array (batch_size, in_features)
        """
        self.x = x.copy()
        batch_size = x.shape[0]
        out = np.zeros(shape=(batch_size, self.b.shape[0]))
        for i in range(batch_size):
            out[i, :] = np.dot(self.w, x[i, :]) + self.b
        return out
    
    def backward(self, da):
        """
        da: 2D array (batch_size, out_features)
        """
        out = np.zeros(shape=(da.shape[0], self.w.shape[1]))
        for i in range(out.shape[0]):
            out[i, :] = np.dot(self.w.T, da[i, :])
        dw = np.zeros_like(self.w)
        for i in range(da.shape[0]):
            dw += da[i][np.newaxis, :].T @ self.x[i][np.newaxis, :]
        dw /= da.shape[0]
        db = da.sum(0) / da.shape[0]
        self.dw += dw
        self.db += db
        return out
    
class LeakyReLU(Layer):
    """
    Similar to PyTorch LeakyReLU.
    """

    def __init__(self, negative_slope=0.01):
        self.negative_slope = negative_slope
        self.mask = None

    def forward(self, x):
        self.mask = x <= 0
        x[self.mask] *= self.negative_slope
        return x

    def backward(self, da):
        da[self.mask] *= self.negative_slope
        return da
    
class Softmax(Layer):
    def forward(self, x):
        """
        x: 2D array (batch_size, class_num)
        """
        # remember to subtract max before np.exp() to avoid overflow.

        out = np.exp(x - x.max(axis=1, keepdims=True))
        out /= out.sum(axis=1, keepdims=True)

        return out

    def backward(self, da):
        return da

class SequentialModel(Layer):
    """
    Final sequential model.
    """
    def __init__(self, layers: List[Layer]):
        self.layers = layers

    def zero_grad(self):
        for layer in self.layers:
            layer.zero_grad()

    def forward(self, x):
        for layer in self.layers:
            x = layer.forward(x)
        return x

    def backward(self, x):
        for layer in reversed(self.layers):
            x = layer.backward(x)

class AdamOptimizer:
    def __init__(self, lr, beta1=0.9, beta2=0.999, eps=1e-8):
        self.lr = lr
        self.beta1 = beta1
        self.beta2 = beta2
        self.eps = eps

        self.m = {}
        self.v = {}

    @staticmethod
    def clip_grad_norm(grad, max_norm=10):
        clip_coef = max_norm / (np.linalg.norm(grad) + 1e-6)
        if clip_coef < 1:
            grad *= clip_coef
        return grad

    def update(self, layers: List[Layer]):
        """
        update weights using gradients
        """
        for idx, layer in enumerate(layers):
            params = layer.get_params()
            if params is not None:
                w, b, = params
                dw, db = layer.get_grads()

                dw = self.clip_grad_norm(dw)
                db = self.clip_grad_norm(db)

                w_key = f'w{idx}'
                b_key = f'b{idx}'

                if w_key not in self.m:
                    self.m[w_key] = np.zeros_like(w)
                    self.v[w_key] = np.zeros_like(w)
                    self.m[b_key] = np.zeros_like(b)
                    self.v[b_key] = np.zeros_like(b)

                self.m[w_key] = self.beta1 * \
                    self.m[w_key] + (1 - self.beta1) * dw
                self.m[b_key] = self.beta1 * \
                    self.m[b_key] + (1 - self.beta1) * db

                self.v[w_key] = self.beta2 * self.v[w_key] + \
                    (1 - self.beta2) * np.square(dw)
                self.v[b_key] = self.beta2 * self.v[b_key] + \
                    (1 - self.beta2) * np.square(db)

                dw = self.lr * self.m[w_key] / \
                    (np.sqrt(self.v[w_key]) + self.eps)
                db = self.lr * self.m[b_key] / \
                    (np.sqrt(self.v[b_key]) + self.eps)

                w -= dw
                b -= db

                layer.set_params(w, b)

class DataLoader:
    def __init__(self, x_train, y_train, batch_size):
        """
        Similar to PyTorch DataLoader. Here shuffle=False, and drop last=True.
        """
        assert len(x_train) == len(y_train) and batch_size <= len(x_train)
        self.batch_size = batch_size
        self.length = len(x_train) // batch_size
        data_len = self.length * batch_size
        self.x_train = np.split(x_train[:data_len], self.length)
        self.y_train = np.split(y_train[:data_len], self.length)

    def get_batch(self, idx):
        """
        Gets a batch of data with index
        """
        return self.x_train[idx], self.y_train[idx]

def train(model: SequentialModel, epochs: int,
          train_loader: DataLoader, optimizer: AdamOptimizer,
          test_loader: DataLoader = None):
    for epoch in range(epochs):
        for idx in range(train_loader.length):
            x_batch, y_batch = train_loader.get_batch(idx)
            model.zero_grad()
            out_batch = model.forward(x_batch)
            da = out_batch - y_batch
            model.backward(da)
            optimizer.update(model.layers)
        test(model, test_loader)
    return model

def test(model: SequentialModel, data_loader: DataLoader):
    """
    Compute the accuracy of predicted outputs on the test set.
    """
    correct = 0
    total = 0
    for idx in range(data_loader.length):
        x_batch, y_batch = data_loader.get_batch(idx)
        out_batch = model.forward(x_batch)
        pred_batch = np.argmax(out_batch, 1)
        total += len(pred_batch)
        correct += np.sum(pred_batch == y_batch)
    acc = correct / total
    print(acc)

def main():
    num_train, num_test = map(int, input().split())
    h, w, num_classes = map(int, input().split())
    seed = int(input())
    # set random seed for initialization of weights and biases.
    np.random.seed(seed)
    
    X_train = np.empty((num_train, h, w), dtype=float)
    y_train = np.empty(num_train, dtype=int)
    X_test = np.empty((num_test, h, w), dtype=float)
    y_test = np.empty(num_test, dtype=int)
    for b in range(num_train):
        img = [input().split() for _ in range(h)]
        X_train[b] = np.array(img, dtype=int) / 255
        y_train[b] = int(input())
    for b in range(num_test):
        img = [input().split() for _ in range(h)]
        X_test[b] = np.array(img, dtype=int) / 255
        y_test[b] = int(input())

    X_train = X_train[:, np.newaxis, :, :]
    X_test = X_test[:, np.newaxis, :, :]
    
    # one-hot encoding for training.
    one_hot_train = np.zeros((len(y_train), num_classes), dtype=float)
    one_hot_train[np.arange(len(y_train)), y_train] = 1
    
    train_loader = DataLoader(X_train, one_hot_train, 200)
    test_loader = DataLoader(X_test, y_test, 100)
    
    optimizer = AdamOptimizer(lr=0.02)
    
    model = SequentialModel([
        Conv2d(1, 3, (3, 3), stride=1, padding=(1, 1)),
        LeakyReLU(),
        MaxPool2d((2, 2), 2),
        Flatten(),
        FullyConnected(3 * 14 * 14, 10),
        Softmax()
    ])
    
    model = train(model, 5, train_loader, optimizer, test_loader)


if __name__ == '__main__':
    main()