#include <stdio.h>

int main() {
    int distance, runnerSpeed, coyoteSpeed;
    scanf("%d", &distance);
    scanf("%d", &runnerSpeed);
    scanf("%d", &coyoteSpeed);
    double runnerTime = distance / runnerSpeed, coyoteTime = (distance + 50) / coyoteSpeed;
    if (runnerTime < coyoteTime)
        printf("Meep Meep");
    else
        printf("Yum");
    return 0;
} 