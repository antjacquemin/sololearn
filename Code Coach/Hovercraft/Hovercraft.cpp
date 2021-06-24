#include <iostream>
using namespace std;

int main() {
    int sales = 0;
    cin >> sales;
    if (sales == 7)
        cout << "Broke Even";
    else if (sales < 7)
        cout << "Loss";
    else    
        cout << "Profit";
    return 0;
}