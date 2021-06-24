#include <stdio.h>

int luhn(char *cardnumber) {
    int digit, total = 0;
    for (int i=0; i<16; i++) {
        digit = cardnumber[i] - '0';
        if (i % 2 == 0) {
            digit = 2 * digit;
            if (digit > 9)
                digit -= 9;
        }
        total += digit;
    }
    return total % 10 == 0;
}

int main() {
    char cardnumber[20];
    scanf("%s", &cardnumber);
    if (strlen(cardnumber) == 16 && luhn(cardnumber))
        printf("valid");
    else
        printf("not valid");
    return 0;
}