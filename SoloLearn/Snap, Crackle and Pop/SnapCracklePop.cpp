#include <iostream>
using namespace std;

int main() {
   int number;
    for (int i=0; i<6; i++) {
        cin >> number;
        if (number % 3 == 0) 
            cout << "Pop ";
        else if (number % 2 == 0)
            cout << "Crackle ";
        else
            cout << "Snap ";
    }
    return 0;
} 

