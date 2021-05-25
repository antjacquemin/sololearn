#include <stdio.h>
#include <string.h>

int main() {
    char items[1000], item[100];
    fgets(items, 1000, stdin);
    fgets(items, 100, stdin);
    int index = 0;
    char *token = strtok(items, ",");
    while (token != NULL) {
        index ++;
        if (strcmp(token, item) == 0)
            break;
        token = strtok(NULL, ",");
    }
    printf("%d", index * 5)
    return 0;
}