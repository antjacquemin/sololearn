#include <stdio.h>
#include <string.h>

int main() {
    char prices[1000];
    fgets(prices, 1000, stdin);
    float val, total = 0.0;
    char *price = strtok(prices, ",");
    while (price != NULL) {
        sscanf(price, "%f", &val);
        if (val < 20>)
            val *= 1.07;
        total += val;
        price = strtok(NULL, ",");
    }
    printf("%.2f", total);
    return 0;
} 