// sumafile.cpp -- functions with an array argument
#include <iostream>
#include <fstream> // file I/O support
#include <cstdlib> // support for exit()
const int SIZE = 60;
using namespace std;

void create_file();

int main()
{
    
    char filename[SIZE];
    
    create_file();
    
    ifstream inFile; // object for handling file input
    
    cout << "Enter name of data file: ";
    cin.getline(filename, SIZE);
    inFile.open(filename); // associate inFile with a file
    if (!inFile.is_open()) // failed to open file
    {
        cout << "Could not open the file " << filename << endl;
        cout << "Program terminating.\n";
        exit(EXIT_FAILURE);
    }
    
    double value;
    double sum = 0.0;
    int count = 0; // number of items read
    inFile >> value; // get first value
    while (inFile.good()) // while input good and not at EOF
    {
        ++count; // one more item read
        sum += value; // calculate running total
        inFile >> value; // get next value
    }
    
    if (inFile.eof())
        cout << "End of file reached.\n";
    else if (inFile.fail())
        cout << "Input terminated by data mismatch.\n";
    else
        cout << "Input terminated for unknown reason.\n";
        
    if (count == 0)
        cout << "No data processed.\n";
    else
    {
        cout << "Items read: " << count << endl;
        cout << "Sum: " << sum << endl;
        cout << "Average: " << sum / count << endl;
    }
    
    inFile.close(); // finished with the file
    
    return 0;
}

void create_file()
{
    ofstream outFile; // create object for output
    outFile.open("scores.txt"); // associate with a file
    
    int M_N_1 = 5;
    int M_N_2 = 6;
    int M_N_3 = 1;
    
    double row1[M_N_1] = {18, 19, 18.5, 13.5, 14};
    double row2[M_N_2] = {16, 19.5, 20, 18, 12, 18.5};
    double row3[M_N_3] = {17.5};
    
    for (int i=0;i < M_N_1; i++)
        outFile << row1[i]<<" ";
    outFile << endl;
    
    for (int i=0;i < M_N_2; i++)
        outFile << row2[i]<<" ";
    outFile << endl;
    
    for (int i=0;i < M_N_3; i++)
        outFile << row3[i]<<" ";
    outFile << endl;
    
    outFile.close();
    
}

//====================================================
/*
18 19 18.5 13.5 14 

16 19.5 20 18 12 18.5 

17.5 
*/
