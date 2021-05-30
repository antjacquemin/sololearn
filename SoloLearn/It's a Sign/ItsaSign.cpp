#include <iostream>
using namespace std;

string saveSign() {
    string label, reverse;
    for (int i=0; i<4; i++) {
        cin >> label;
        reverse = string(label.rbegin(), label.rend());
        if (label == reverse)
            return "Open";
    }
    return "Trash";
}

int main() {
    cout << saveSign();
    return 0;
} 