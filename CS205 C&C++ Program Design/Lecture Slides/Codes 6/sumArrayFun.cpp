// Example program
#include <iostream>
#include <string>

//int sum(int (*ar2)[4], int size);
int sum(int ar2[][4], int size);

int main()
{
  int data[3][4] = {{1,2,3,4}, {9,8,7,6}, {2,4,6,8}};
  int total = sum(data, 3);
  
  std::cout << "The sum of array is: "<< total << "!\n";
}

//int sum(int (*ar2)[4], int size)
int sum(int ar2[][4], int size)
{ 
    std::cout<< sizeof ar2[0] <<std::endl; // return the size of array
    std::cout<< sizeof ar2 <<std::endl; // return the size of an address

    std::cout<< ar2<<std::endl;
    std::cout<< ar2 + 1<<std::endl;

    int total = 0;
    for (int r = 0; r < size; r++)
        for (int c = 0; c < 4; c++) 
            total += ar2[r][c];
    
    return total;
}

