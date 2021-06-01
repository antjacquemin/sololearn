#include <stdio.h>
#include <string.h>

int main() {
    char prices[1000];
    fgets(prices, 1000, stdin);
    float val, max = 0.0;
    char *price = strtok(prices, " ");
    while (price != NULL) {
        sscanf(price, "%f", &val);
        if (val > max)
            max = val;
        price = strtok(NULL, " ");
    }
    if (max * 1.1 > 20)
        printf("Back to the store");
    else 
        printf("On to the terminal");
    return 0;
} 