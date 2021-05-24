#include <iostream>
using namespace std;

int main() {
    int score, tickets, cost;
    cin >> score >> cost;
    tickets = score / 12;
    if (tickets < cost)
        cout << "Try again";
    else
        cout << "Buy it!";
    return 0;
} 