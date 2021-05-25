#include <iostream>
using namespace std;

int main() {
    int carrots, boxes, remainder, missing;
    cin >> carrots >> boxes;
    remainder = carrots % boxes;
    missing = 7 - remainder
    if (missing <= 0)
        cout << "Cake Time";
    else
        cout << "I need to buy " << missing << " more";
    return 0;
}