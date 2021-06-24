#include <stdio.h>

int main() {
    int score, tickets, cost;
    scanf("%d", &score);
    tickets = score / 12;
    scanf("%d", &cost);
    if (tickets < cost)
        printf("Try again");
    else
        printf("Buy it!");
    return 0;
} 