#include <iostream>
using namespace std;

int main() {
    string s;
    cin >> s;
    string reversed(s.rbegin(), s.rend());
    cout << reversed;
    return 0;
} 