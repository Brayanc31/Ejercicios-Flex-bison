/* ejercicio6.c */
/* Version en C del word count */

#include <stdio.h>
#include <ctype.h>

int main() {
    int c;
    int lines = 0;
    int words = 0;
    int chars = 0;
    int in_word = 0;

    while ((c = getchar()) != EOF) {
        chars++;

        if (c == '\n')
            lines++;

        if (isspace(c)) {
            in_word = 0;
        } else if (!in_word) {
            in_word = 1;
            words++;
        }
    }

    printf("%8d%8d%8d\n", lines, words, chars);

    return 0;
}
