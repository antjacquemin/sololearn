#include <stdio.h>
#include <math.h>

int main() {
    int kaleidoscopes;
    scanf("%d", &kaleidoscopes);
    double cost = 5 * kaleidoscopes;
    if (kaleidoscopes > 1)
        cost *= 0.9;
    cost *= 1.07;
    printf("%.2f", round(cost * 100) / 100);
    return 0;
} 