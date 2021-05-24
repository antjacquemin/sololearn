#include <stdio.h>

int main() {
    int sales;
    scanf("%d", &sales);
    if (sales == 7)
        printf("Broke Even");
    else if (sales < 7)
        printf("Loss");
    else    
        printf("Profit");
    return 0;
}