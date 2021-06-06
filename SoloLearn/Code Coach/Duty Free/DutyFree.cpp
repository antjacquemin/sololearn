#include <iostream>
using namespace std;

int main() {
    double price, max = 0.0;
    while (cin >> price) {
        if (price > max)
            max = price;
    }
    if (max * 1.1 > 20)
        cout << "Back to the store";
    else 
        cout << "On to the terminal";
    return 0;
}