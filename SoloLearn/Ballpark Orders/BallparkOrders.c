#include <stdio.h>
#include <string.h>

int main() {
    char orders[1000];
    scanf("%[^\n]%*c", orders);
    float total = 0.0;
    char *order = strtok(orders, " ");
    while (order != NULL) {
        if (strcmp(order, "Nachos") == 0 || strcmp(order, "Pizza") == 0)
            total += 6.0;
        else if (strcmp(order, "Cheeseburger") == 0)
            total += 10.0
        else if (strcmp(order, "Water") == 0)
            total += 4.0
        else    
            total += 5.0;
        order = strtok(NULL, ",");
    }
    float tax = total * 7 / 100;
    printf("%.2f", total + tax);
    return 0;
}