#include <stdio.h>

int main() {
    int val;
    printf("#");
    for (int i=0; i<3; i++) {
        scanf("%d", &val);
        printf("%x", val / 16);
        printf("%x", val % 16);
    }
    return 0;
}