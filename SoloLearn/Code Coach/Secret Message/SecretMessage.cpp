#include <iostream>
using namespace std;

int main() {
    string phrase;
    getline(cin, phrase);
    for (int i=0; i<phrase.length(); i++) {
        if (phrase[i] != ' ')
            phrase[i] = 'a' + 'z' - tolower(phrase[i]);
    }
    cout << phrase;
    return 0;
}