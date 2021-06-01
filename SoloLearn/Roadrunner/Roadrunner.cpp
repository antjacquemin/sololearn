#include <iostream>
using namespace std;

int main() {
    int distance, runnerSpeed, coyoteSpeed;
    cin >> distance >> runnerSpeed >> coyoteSpeed;
    double runnerTime = distance / runnerSpeed, coyoteTime = (distance + 50) / coyoteSpeed;
    if (runnerTime < coyoteTime)
        cout << "Meep Meep";
    else
        cout << "Yum";
    return 0;
} 