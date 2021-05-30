#include <iostream>
using namespace std;

int main() {
    int h1, l1, h2, l2;
    scanf("%d,%d", &h1, &l1);
    scanf("%d,%d", &h2, &l2);
    if (h1 * l1 < h2 * l2)
        cout << "Apartment B";
    else 
        cout << "Apartment A";
    return 0;
} 