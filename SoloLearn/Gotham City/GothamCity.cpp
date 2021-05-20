#include <iostream>
using namespace std;

int main() {
    int nb = 0;
    cin >> nb;
    if (nb < 5)
        cout << "I got this!";
    else if (nb < 11)
        cout << "Help me Batman";
    else
        cout << "Good Luck out there!";
    return 0;
}