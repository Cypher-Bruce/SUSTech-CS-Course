#pragma once

#include <random>
#include <stack>
#include <string>
#include <vector>

template<typename T>
void shuffle_stack(std::stack<T> &stack) {
    std::vector<T> tmp;
    while (!stack.empty()) {
        tmp.push_back(stack.top());
        stack.pop();
    }

    std::random_device rd;
    std::default_random_engine rng(rd());
    std::shuffle(tmp.begin(), tmp.end(), rng);

    for (const auto &cardPtr: tmp) {
        stack.push(cardPtr);
    }
}

template<typename T>
std::string stack_to_string(const std::stack<T> &stack) {
    std::string result = "[";
    auto cpy = stack;
    while (!cpy.empty()) {
        result += cpy.top()->to_string();
        cpy.pop();
        if (!cpy.empty()) {
            result += ", ";
        }
    }
    return result + "]";
}
