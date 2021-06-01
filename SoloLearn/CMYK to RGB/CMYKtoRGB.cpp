#include <iostream>
#include <cmath>
using namespace std;

int main() {
    double cmyk[4];
    for (size_t i=0; i<4; i++)
        cin >> cmyk[i];
    int rgb[3];
    for (size_t i=0; i<3; i++)
        rgb[i] = round(255 * (1 - cmyk[i]) * (1 - cmyk[3]));
    cout << rgb[0] << "," << rgb[1] << "," << rgb[2];
    return 0;
}