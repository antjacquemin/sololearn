#include <stdio.h>

int main() {
    int pesos, dollars;
    scanf("%d", &pesos);
    scanf("%d", &dollars);
    if (dollars > pesos / 50)
        printf("Pesos");
    else
        printf("Dollars");
    return 0;
}