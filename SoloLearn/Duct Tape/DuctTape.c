#include <stdio.h>
#include <math.h>

int main() {
    int height, width, area, rolls;
    scanf("%d", &height);
    scanf("%d", &width);
    area = height * width * 2;
    rolls = ceil(area / 10.0);
    printf("%d", rolls);
    return 0;
} 