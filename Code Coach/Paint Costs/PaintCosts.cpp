#include <iostream>
#include <cmath>
using namespace std;

int main() {
    float colors, total, tax;
    cin >> colors;
    total = 40 + 5 * colors;
    tax = total / 10;
    cout << (int) ceil(total + tax);
    return 0;
}