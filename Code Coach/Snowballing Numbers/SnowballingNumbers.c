#include <stdio.h>

const char* snowball(int n) {
    int val, total = 0;
    for (int i=0; i<n; i++) {
        scanf("%d", &val);
        if (val <= total)
            return "false";
        total += val;
    }
    return "true";
}

int main() {
    int n;
    scanf("%d", &n);
    printf("%s", snowball(n));
    return 0;
}