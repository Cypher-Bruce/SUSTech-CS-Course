# Assignment1

### Task 1: Convert between Radians and Degrees

**Objective:** Write a program to convert between radians and degrees. The user should be able to choose the input type (radians or degrees) and provide the angle value.

**Input:**
- An angle value
- Input type (r for radians, d for degrees)

**Output:**
- The converted angle in the other unit (degrees or radians, accurate to two decimal places)

**Example:**

Input:

```
45
d
```

Output:
```
0.79
```

### Task 2: Compute sin(x) and cos(x)

**Objective:** Write a program to compute `sin(x)` and `cos(x)` for a given `x`. We compute the sine and cosine of x using the series, and the computation should use all terms in the series up through the term involving `x^n`.

**Formulas:**
- `sin(x) = x - x^3/3! + x^5/5! - x^7/7! + x^9/9! ...`
- `cos(x) = 1 - x^2/2! + x^4/4! - x^6/6! ...`

**Input:**
- A floating-point number `x` 
- A positive integer `n`
- Input type (r for radians, d for degrees)

**Output:**
- Computed values of `sin(x)` (accurate to two decimal places)
- Computed values of `cos(x)` (accurate to two decimal places)

**Example:**

Input:

```
0.50
5
r
```

Output:
```
0.48
0.88
```
**Explanation:**
sin(0.50) ≈ 0.48
cos(0.50) ≈ 0.88

### Task 3: Triangle Dictionary - Data Structure Design

**Objective:** Design a data structure to store information about triangles, such as the lengths of two sides and the included angle. The data structure should support adding new triangles and searching for similar triangles.

Implement the `TriangleDictionary` struct and related functions:

- `TriangleDictionary* createTriangleDictionary()` initializes the triangle dictionary object.
- `void addTriangle(TriangleDictionary* dict, double side1, double side2, double angle)` adds a triangle with the given side lengths and included angle to the data structure.
- `bool searchSimilar(TriangleDictionary* dict, double side1, double side2, double angle)` returns true if there is a triangle in the data structure that is similar to the given triangle, otherwise returns false.

**Input:**

- The first line of the input contains an integer `n` (1 ≤ n ≤ 1000), the number of operations to perform
- The following `n` lines each contain an operation and the corresponding parameters (if any). The operations are one of the following:
  - `TriangleDictionary`: initializes the triangle dictionary object (no parameters)
  - `addTriangle side1 side2 angle`: adds a triangle with the given side lengths and included angle to the data structure
  - `searchSimilar side1 side2 angle`: searches for a similar triangle with the given side lengths and included angle

**Output:**

- For each `searchSimilar` operation, output a single line with either `true` or `false`

**Example:**

Input:

```
7
TriangleDictionary
addTriangle 3 4 90
addTriangle 5 12 90
addTriangle 8 15 90
searchSimilar 6 8 90
searchSimilar 7 24 90
searchSimilar 5 4 36.87
```

Output:

```
true
false
true
```

**Note:**

- The side lengths and angle are given as double values
- The maximum size of Triangle Dictionary is 100
- The searchSimilar method should consider triangles similar if their corresponding side length ratios are equal or the corresponding angles are equal (using a small tolerance of 0.01 to account for computational precision), regardless of the order of the side lengths
- The addTriangle method should ensure that the triangle is valid (i.e., the sum of the side lengths is greater than the third side)
- In the example, the third `searchSimilar` operation returns true because a triangle with side lengths 5, 4, and an angle of 36.87 degrees is similar to the first triangle added (with side lengths 3, 4, and an angle of 90 degrees)


**Template**

```c
#include <iostream>
#include <cmath>

using namespace std;

const int MAX_TRIANGLES = 100;

struct Triangle {
        // To be completed
};

struct TriangleDictionary {
    Triangle triangles[MAX_TRIANGLES];
    int triangle_count;
};

void addTriangle(TriangleDictionary* dict, double side1, double side2, double angle) {
        // To be completed
}

bool isSimilar(const Triangle& triangle, double side1, double side2, double side3) {
        // To be completed
}

bool searchSimilar(TriangleDictionary* dict, double side1, double side2, double angle) {
    double side3 = sqrt(side1 * side1 + side2 * side2 - 2 * side1 * side2 * cos(angle * M_PI / 180));
    for (int i = 0; i < dict->triangle_count; ++i) {
        if (isSimilar(dict->triangles[i], side1, side2, side3)) {
            return true;
        }
    }
    return false;
}

int main() {
    int n;
    // printf("Enter the number of operations (n): ");
    scanf("%d", &n);

    char** actions = (char**)malloc(n * sizeof(char*));
    double** parameters = (double**)malloc(n * sizeof(double*));

    for (int i = 0; i < n; ++i) {
        actions[i] = (char*)malloc(15 * sizeof(char));
        parameters[i] = (double*)malloc(3 * sizeof(double));
    }

    for (int i = 0; i < n; ++i) {
        // printf("Enter operation #%d: ", i + 1);
        scanf("%s", actions[i]);
        if (strcmp(actions[i], "addTriangle") == 0 || strcmp(actions[i], "searchSimilar") == 0) {
            scanf("%lf %lf %lf", &parameters[i][0], &parameters[i][1], &parameters[i][2]);
        }
    }

    TriangleDictionary triangleDictionary;
    triangleDictionary.triangles = NULL;
    triangleDictionary.triangle_count = 0;

    for (int i = 0; i < n; ++i) {
        if (strcmp(actions[i], "TriangleDictionary") == 0) {
            // Do nothing
        } else if (strcmp(actions[i], "addTriangle") == 0) {
            addTriangle(&triangleDictionary, parameters[i][0], parameters[i][1], parameters[i][2]);
        } else if (strcmp(actions[i], "searchSimilar") == 0) {
            int result = searchSimilar(&triangleDictionary, parameters[i][0], parameters[i][1], parameters[i][2]);
            printf(result ? "true\n" : "false\n");
        }
    }
}

```

**C language Template**
```c
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

typedef struct {
    // To be completed
} Triangle;

typedef struct {
    Triangle* triangles;
    int triangle_count;
} TriangleDictionary;

void addTriangle(TriangleDictionary* dict, double side1, double side2, double angle) {
    // To be completed
}

bool isSimilar(const Triangle* triangle, double side1, double side2, double side3) {
    // To be completed
}

bool searchSimilar(TriangleDictionary* dict, double side1, double side2, double angle) {
    double side3 = sqrt(side1 * side1 + side2 * side2 - 2 * side1 * side2 * cos(angle * M_PI / 180));
    for (int i = 0; i < dict->triangle_count; ++i) {
        if (isSimilar(&dict->triangles[i], side1, side2, side3)) {
            return true;
        }
    }
    return false;
}

int main() {
    int n;
    // printf("Enter the number of operations (n): ");
    scanf("%d", &n);

    char** actions = (char**)malloc(n * sizeof(char*));
    double** parameters = (double**)malloc(n * sizeof(double*));

    for (int i = 0; i < n; ++i) {
        actions[i] = (char*)malloc(15 * sizeof(char));
        parameters[i] = (double*)malloc(3 * sizeof(double));
    }

    for (int i = 0; i < n; ++i) {
        // printf("Enter operation #%d: ", i + 1);
        scanf("%s", actions[i]);
        if (strcmp(actions[i], "addTriangle") == 0 || strcmp(actions[i], "searchSimilar") == 0) {
            scanf("%lf %lf %lf", &parameters[i][0], &parameters[i][1], &parameters[i][2]);
        }
    }

    TriangleDictionary triangleDictionary;
    triangleDictionary.triangles = NULL;
    triangleDictionary.triangle_count = 0;

    for (int i = 0; i < n; ++i) {
        if (strcmp(actions[i], "TriangleDictionary") == 0) {
            // Do nothing
        } else if (strcmp(actions[i], "addTriangle") == 0) {
            addTriangle(&triangleDictionary, parameters[i][0], parameters[i][1], parameters[i][2]);
        } else if (strcmp(actions[i], "searchSimilar") == 0) {
            int result = searchSimilar(&triangleDictionary, parameters[i][0], parameters[i][1], parameters[i][2]);
            printf(result ? "true\n" : "false\n");
        }
    }
}
```

### Task 4: Maximum Sine Value

**Problem Description:**

Given a sequence containing `N` angles, select any number of angles to add together, and find the maximum possible sine value.

**Input:**

- The first line contains an integer `N` (1 ≤ N ≤ 1000), representing the length of the sequence.
- The second line contains `N` real numbers, representing the angles in the sequence (Degrees, accurate to two decimal places).

**Output:**

- Output a real number, representing the maximum possible sine value of the sum of the selected angles, with the result rounded to two decimal places.

**Example 1:**

Input:

```
5
30.00 45.00 60.00 90.00 120.00
```

Output:

```
1.00
```

**Example 2:**

Input:

```
6
5.00 20.00 29.00 125.00 360.00 365.00
```

Output:

```
0.86
```

**Explanation:**

Selected angles: 5.00 20.00 29.00 365.00 
sin(5°+20°+29°+365°)=sin(59°)≈0.86
