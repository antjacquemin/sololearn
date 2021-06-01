#include <stdio.h>
#include <math.h>

int main() {
    float colors, total, tax;
    scanf("%f", &colors);
    total = 40 + 5 * colors;
    tax = total / 10;
    printf("%d", (int) ceil(total + tax));
    return 0;
} 