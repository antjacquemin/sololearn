#include <iostream>
using namespace std;

int main() {
    cout << "#" << hex;
    int val;
    for (int i=0; i<3; i++) {
        cin >> val;
        cout << val / 16;
        cout << val % 16;
    }
    return 0;
}