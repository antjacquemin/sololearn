#include <iostream>
using namespace std;

int main() {
    string sound, animals;
    while (cin >> sound) {
        if (sound == "Grr")
            animals += "Lion ";
        else if (sound == "Rawr")
            animals += "Tiger ";
        else if (sound == "Ssss")
            animals += "Snake ";
        else if (sound == "Chirp")
            animals += "Bird ";
    }
    animals.pop_back();
    cout << animals;
    return 0;
}
