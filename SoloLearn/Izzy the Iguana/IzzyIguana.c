#include <stdio.h>
#include <string.h>

int main() {
    char snacks[1000];
    fgets(snacks, 1000, stdin);
    int total = 0;
    char *snack = strtok(snacks, " ");
    while (snack != NULL) {
        if (strcmp(snack, "Lettuce") == 0)
            total += 5;
        else if (strcmp(snack, "Carrot") == 0)
            total += 4;
        else if (strcmp(snack, "Mango") == 0)
            total += 9;
        snack = strtok(NULL, " ");
    }
    if (total > 9)
        printf("Come on Down!");
    else 
        printf("Time to wait");
    return 0;
} 