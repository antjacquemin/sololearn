#include <stdio.h>
#include <string.h>

int main() {
    char sounds[1000], animals[1000];
    fgets(sounds, 1000, stdin);
    char *sound = strtok(sounds, " ");
    while (sound != NULL) {
        if (strcmp(sound, "Grr") == 0)
            strcat(animals, "Lion ");
        else if (strcmp(sound, "Rawr") == 0)
            strcat(animals, "Tiger ");
        else if (strcmp(sound, "Ssss") == 0)
            strcat(animals, "Snake ");
        else if (strcmp(sound, "Chirp") == 0)
            strcat(animals, "Bird ");
        sound = strtok(NULL, " ");
    }
    animals[strlen(animals) - 1] = 0;
    printf("%s", animals);
    return 0;
}