#include <stdio.h>
#include <string.h>

int main() {
    char s[100];
    scanf("%s", s);
    int length = strlen(s);
    char ns[length];
    for (int i=0; i<=length; i++) {
        ns[i] = s[length - i - 1];
    }
    printf("%s", ns);
    return 0;
} 