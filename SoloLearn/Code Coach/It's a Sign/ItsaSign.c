#include <stdio.h>
#include <string.h>

char* saveSign() {
    char label[50], reverse[50];
    int begin, end, count;
    for (int i = 0; i < 4; i++) {
        scanf("%s", label);
        strcpy(reverse, label);
        count = 0;
        while (label[count] != '\0')
            count++;
        end = count - 1;
        for (begin = 0; begin < count; begin++) {
            reverse[begin] = label[end];
            end--;
        } 
        reverse[begin] = '\0';
        if (strcmp(label, reverse) == 0)
            return "Open";
    }
    return "Trash";
}
int main() {
    printf("%s", saveSign());
    return 0;
} 