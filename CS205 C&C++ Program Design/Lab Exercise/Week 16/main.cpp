#include <iostream>
using namespace std;

class OutOfRangeException {
public:
    OutOfRangeException(int index, int value) : index(index), value(value) {}
    int getIndex() const { return index; }
    int getValue() const { return value; }
private:
    int index;
    int value;
};

float average(int course_marks[]){
    for(int i = 0; i < 4; i++){
        if(course_marks[i] < 0 || course_marks[i] > 100){
            throw OutOfRangeException(i, course_marks[i]);
        }
    }
    return (float) (course_marks[0] + course_marks[1] + course_marks[2] + course_marks[3]) / 4;
}

int main() {
    int course_marks[4];
    bool first_input = true;
    while(true){
        try{
            if(first_input){
                cout << "Please enter marks for 4 courses: " << endl;
                first_input = false;
            }else{
                cout << "Would you want to enter another marks for 4 courses? (y/n)" << endl;
                char c;
                cin >> c;
                if(c == 'n'){
                    break;
                }else if(c != 'y'){
                    throw OutOfRangeException(-1, -1);
                }
            }
            for(int i = 0; i < 4; i++){
                cin >> course_marks[i];
            }
            cout << "The average of the four courses is: " << average(course_marks) << endl;
        }catch(OutOfRangeException e){
            cout << "The parameter " << e.getIndex() + 1 << " is " << e.getValue() << ", which is out of range." << endl;
        }
    }
    return 0;
}