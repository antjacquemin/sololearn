#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() 
{
    char ch;
    char string[100];
    char sentence[100];
    scanf("%c", &ch);
    scanf("%s", string);
    scanf("\n");
    scanf("%[^\n]%*c", sentence);
    printf("%c\n", ch);
    printf("%s\n", string);   
    printf("%s\n", sentence); 
    return 0;
}