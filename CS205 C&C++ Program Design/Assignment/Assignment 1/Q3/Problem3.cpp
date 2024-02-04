#include<iostream>
#include<cmath>
#include<cstring>
using namespace std;

struct Triangle{
    double side1, side2, side3;
};

struct TriangleDict{
    int count;
    Triangle triangles[105];
};

bool isTriangle(double side1, double side2, double side3){
    if(side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1){
        return false;
    }else{
        return true;
    }
}

void addTriangle(TriangleDict &dict, double side1, double side2, double angle){
    double side3 = sqrt(side1 * side1 + side2 * side2 - 2 * side1 * side2 * cos(angle));
    if(!isTriangle(side1, side2, side3)){
        return;
    }
    dict.triangles[dict.count].side1 = side1;
    dict.triangles[dict.count].side2 = side2;
    dict.triangles[dict.count].side3 = side3;
    dict.count++;
    return;
}

bool isSimilar(Triangle t1, Triangle t2){
    double ratio1 = t1.side1 / t2.side1;
    double ratio2 = t1.side2 / t2.side2;
    double ratio3 = t1.side3 / t2.side3;
    if(abs(ratio1 - ratio2) <= 0.1 && abs(ratio1 - ratio3) <= 0.1 && abs(ratio2 - ratio3) <= 0.1){
        return true;
    }else{
        return false;
    }
}

bool searchSilimar(TriangleDict dict, Triangle t){
    for(int i = 0; i < dict.count; i++){
        if(isSimilar(dict.triangles[i], t)){
            return true;
        }
    }
    return false;
}

int main(){
    TriangleDict dict;
    dict.count = 0;
    int n;
    bool flag = false;
    cin >> n;
    while(n--){
        string command;
        cin >> command;
        if(command == "TriangleDictionary"){
            flag = true;
        }else if(command == "addTriangle"){
            if(!flag){
                continue;
            }
            double side1, side2, angle;
            cin >> side1 >> side2 >> angle;
            angle = angle / 180 * acos(-1);
            addTriangle(dict, side1, side2, angle);
        }else if(command == "searchSimilar"){
            if(!flag){
                continue;
            }
            double side1, side2, angle;
            cin >> side1 >> side2 >> angle;
            angle = angle / 180 * acos(-1);
            Triangle t1;
            t1.side1 = side1;
            t1.side2 = side2;
            t1.side3 = sqrt(side1 * side1 + side2 * side2 - 2 * side1 * side2 * cos(angle));\
            //cout<<t1.side1<<" "<<t1.side2<<" "<<t1.side3<<endl;
            Triangle t2;
            t2.side1 = side1;
            t2.side2 = t1.side3;
            t2.side3 = side2;
            //cout<<t2.side1<<" "<<t2.side2<<" "<<t2.side3<<endl;
            Triangle t3;
            t3.side1 = side2;
            t3.side2 = t1.side3;
            t3.side3 = side1;
            //cout<<t3.side1<<" "<<t3.side2<<" "<<t3.side3<<endl;
            Triangle t4;
            t4.side1 = side2;
            t4.side2 = side1;
            t4.side3 = t1.side3;
            //cout<<t4.side1<<" "<<t4.side2<<" "<<t4.side3<<endl;
            Triangle t5;
            t5.side1 = t1.side3;
            t5.side2 = side1;
            t5.side3 = side2;
            //cout<<t5.side1<<" "<<t5.side2<<" "<<t5.side3<<endl;
            Triangle t6;
            t6.side1 = t1.side3;
            t6.side2 = side2;
            t6.side3 = side1;
            //cout<<t6.side1<<" "<<t6.side2<<" "<<t6.side3<<endl;
            if(searchSilimar(dict, t1) || searchSilimar(dict, t2) || searchSilimar(dict, t3) || searchSilimar(dict, t4) || searchSilimar(dict, t5) || searchSilimar(dict, t6)){
                cout << "true" << endl;
            }else{
                cout << "false" << endl;
            }
        }
    }
    return 0;
}