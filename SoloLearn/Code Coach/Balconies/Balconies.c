#include <stdio.h>

int main() {
    int h1, l1, h2, l2;
    scanf("%d,%d", &h1, &l1);
    scanf("%d,%d", &h2, &l2);
    if (h1 * l1 < h2 * l2)
        printf("Apartment B");
    else 
        printf("Apartment A");
    return 0;
} 