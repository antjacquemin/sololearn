#include <iostream>
using namespace std;

int main() {
    string snack;
    int total = 0;
    while (cin >> snack) {
        if (snack == "Lettuce")
            total += 5;
        else if (snack == "Carrot")
            total += 4;
        else if (snack == "Mango")
            total += 9;
    }
    if (total > 9)
        cout << "Come on Down!";
    else
        cout << "Time to wait";
    return 0;
}