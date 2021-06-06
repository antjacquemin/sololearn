#include <stdio.h>

int main() {
    int number;
    for (int i=0; i<6; i++) {
        scanf("%d", &number);
        if (number % 3 == 0) 
            printf("Pop ");
        else if (number % 2 == 0)
            printf("Crackle ");
        else
            printf("Snap ");
    }
    return 0;
} 