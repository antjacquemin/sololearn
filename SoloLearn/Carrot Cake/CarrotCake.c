#include <stdio.h>

int main() {
    int carrots, boxes, remainder, missing;
    scanf("%d", &carrots);
    scanf("%d", &boxes);
    remainder = carrots % boxes;
    missing = 7 - remainder
    if (missing <= 0)
        printf("Cake Time");
    else
        printf("I need to buy %d more", missing);
    return 0;
}