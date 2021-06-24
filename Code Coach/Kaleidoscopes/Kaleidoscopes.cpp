#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int kaleidoscopes;
    cin >> kaleidoscopes;
    double cost = 5 * kaleidoscopes;
    if (kaleidoscopes > 1)
        cost *= 0.9;
    cost *= 1.07;
    cout << round(cost * 100) / 100;
    return 0;
} 