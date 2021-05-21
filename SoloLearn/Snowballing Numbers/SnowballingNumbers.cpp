#include <iostream>
using namespace std;

string snowball(int n) {
    int val, total = 0;
    for (int i=0; i<n; i++) {
        cin >> val;
        if (val <= total)
            return "false";
        total += val;
    }
    return "true";
}

int main() {
    int n;
    cin >> n;
    cout << snowball(n);
    return 0;
}