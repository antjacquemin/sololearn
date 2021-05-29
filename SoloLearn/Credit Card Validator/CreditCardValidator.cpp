#include <iostream>
using namespace std;

bool luhn(string cardnumber) {
    int digit, total = 0;
    for (int i=0; i<16; i++) {
        digit = cardnumber[i] - '0';
        if (i % 2 == 0) {
            digit = 2 * digit;
            if (digit > 9)
                digit -= 9;
        }
        total += digit;
    }
    return total % 10 == 0;
}

int main() {
    string cardnumber;
    cin >> cardnumber;
    if (cardnumber.length() == 16 && luhn(cardnumber))
        cout << "valid";
    else
        cout << "not valid";
    return 0;
}