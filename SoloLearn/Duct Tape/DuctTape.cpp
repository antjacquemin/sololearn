#include <iostream>
#include <cmath>

using namespace std;

int main() {
    int height, width, area;
    cin >> height >> width;
    area = height * width * 2;
    cout << ceil(area / 10.0);
    return 0;
} 