#include <stdio.h>
#include <math.h>

int main() {
    double cmyk[4];
    for (int i=0; i<4; i++)
        scanf("%f", &cmyk[i]);
    int rgb[3];
    for (int i=0; i<3; i++)
        rgb[i] = round(255 * (1 - cmyk[i]) * (1 - cmyk[3]));
    printf("%d,%d,%d", rgb[0], rgb[1], rgb[2]);
    return 0;
}