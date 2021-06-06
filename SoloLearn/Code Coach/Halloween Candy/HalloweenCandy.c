#include <stdio.h>
#include <math.h>

int main() {
    int houses;
    scanf("%d", &houses);
    printf("%.0f", ceil(2.0 / houses * 100));
    return 0;
}