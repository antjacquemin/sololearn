#include <stdio.h>

int main() {
    char phrase[100];
    fgets(phrase, 100, stdin);
    
    for (int i = 0; phrase[i]; i++) {
        if (phrase[i] != ' ')
            phrase[i] = 'a' + 'z' - tolower(phrase[i]);
    }

    printf("%s", phrase);
    return 0;
}