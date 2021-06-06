#include <iostream>
#include <math>
using namespace std;

double price(string value) {
    double price = stod(value);
    if (price < 20)
        price *= 1.07;
    return price
}

int main() {
    string prices;
    double total = 0.0;
    cin >> prices;
    size_t pos = 0;
    while ((pos = prices.find(",")) != string::npos) {
        total += price(prices.substr(0, pos));
        prices.erase(0, pos + 1);
    }
    total += price(prices);
    cout << round(total * 100) / 100;
    return 0;
} 