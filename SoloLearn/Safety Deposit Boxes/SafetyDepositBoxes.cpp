#include <iostream>
#include <string>
using namespace std;

int main() {
    string items, item, token;
    getline(cin, items);
    getline(cin, item);
    size_t pos = 0;
    int index = 1
    while ((pos = items.find(",")) != string::npos) {
        token = items.substr(0, pos);
        if (token.compare(item) == 0)
            break;
        items.erase(0, pos + 1);
        index ++;
    }
    cout << index * 5;
    return 0;
} 