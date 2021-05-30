#include <iostream>
using namespace std;

int main() {
    string order;
    float total = 0.0;
    while (cin >> order) {
        if (order == "Nachos" || order == "Pizza")
            total += 6.0;
        elif (order == "Cheeseburger")
            total += 10.0;
        elif (order == "Water")
            total += 4.0;
        else
            total += 5.0;
    }
    float tax = total * 7 /100;
    cout << total + tax;
    return 0;
}