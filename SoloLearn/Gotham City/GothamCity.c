#include <stdio.h>

int main() {
    int nb;
    scanf("%d", &nb);
    if (nb < 5)
        printf("I got this!");
    else if (nb < 11)
        printf("Help me Batman");
    else
        printf("Good Luck out there!");
    return 0;
}