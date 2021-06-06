#include <stdio.h>

int main() {
    int age, years;
    scanf("%d", &age);
    scanf("%d", &years);
    printf("My twin is %d years old and they are %d years older than me", age + years, years);
    return 0;
} 