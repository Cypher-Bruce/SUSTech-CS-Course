// travel.cpp -- using structures with functions
#include <iostream>
struct travel_time
{
    int hours;
    int mins;
};
using namespace std;
const int Mins_per_hr = 60;
travel_time sum(travel_time t1, travel_time t2);
void show_time(travel_time t);

int main()
{
    
    travel_time day1 = {5, 45}; // 5 hrs, 45 min
    travel_time day2 = {4, 55}; // 4 hrs, 55 min
    
    travel_time trip = sum(day1, day2);
    cout<<"the address of summed value in sum function"<< & trip<<endl;
    
    cout << "Two-day total: ";
    show_time(trip);

    travel_time day3= {4, 32};
    cout << "Three-day total: ";
    show_time(sum(trip, day3));
    
    return 0;
}

travel_time sum(travel_time t1, travel_time t2)
{
    travel_time total;
    total.mins = (t1.mins + t2.mins) % Mins_per_hr;
    total.hours = t1.hours + t2.hours + (t1.mins + t2.mins) / Mins_per_hr;
    
    cout<<"the address of summed value in sum function"<< & total<<endl;
    return total;
}
void show_time(travel_time t)
{
    using namespace std;
    cout << t.hours << " hours, "  << t.mins << " minutes\n";
}