#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <cmath>
#include <iomanip>
using namespace std;
// Function to read integers from a file into a vector
vector<int> readIntegersFromFile(const string& filename) {
    vector<int> numbers;
    ifstream file(filename);
    if (!file) {
        cerr << "Error opening file: " << filename << endl;
        return numbers;
    }
    
    int number;
    while (file >> number) {
        numbers.push_back(number);
    }
    
    file.close();
    return numbers;
}

// Function to calculate the average percentage difference
double calculateAveragePercentageDifference(const vector<int>& file1, const vector<int>& file2) {
    if (file1.size() != file2.size()) {
        cerr << "Files have different number of lines." << endl;
        return -1;
    }

    double totalPercentageDifference = 0.0;
    int countDifferences = 0;
    double maxDifference = 0.0;
    double minDifference = 100.0;
    for (size_t i = 0; i < file1.size(); ++i) {
        if (file1[i] != file2[i]) {
            ++countDifferences;
            double percentageDifference = (abs(file1[i] - file2[i]) / static_cast<double>(file1[i])) * 100;
            totalPercentageDifference += percentageDifference;
            maxDifference = max(maxDifference, percentageDifference);
            minDifference = min(minDifference, percentageDifference);
        }
    }

    double percentageOfDifferentLines = (countDifferences / static_cast<double>(file1.size())) * 100;
    double averagePercentageDifference = totalPercentageDifference / countDifferences;

    cout << "Percentage of different lines: " << percentageOfDifferentLines << "%" << endl;
    cout << "Average percentage difference: " << averagePercentageDifference << "%" << endl;
    cout << "Max percentage difference: " << maxDifference << "%" << endl;
    cout << "Min percentage difference: " << minDifference << "%" << endl;

    return averagePercentageDifference;
}

int main() {
    string filename1 = "C:\\Users\\Cyphe\\Documents\\SUSTech Assignment\\Term 4\\Algorithm Design and Analysis\\Lab\\Week 14\\B stdout.txt";
    string filename2 = "C:\\Users\\Cyphe\\Documents\\SUSTech Assignment\\Term 4\\Algorithm Design and Analysis\\Lab\\Week 14\\B randout.txt";

    vector<int> file1 = readIntegersFromFile(filename1);
    vector<int> file2 = readIntegersFromFile(filename2);

    if (!file1.empty() && !file2.empty()) {
        calculateAveragePercentageDifference(file1, file2);
    }

    return 0;
}
