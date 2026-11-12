#include <stdio.h>
char *dangle(void) {
    char s[] = "hello";
    return s;
}
int main(void) { char *r = dangle(); printf("%s\n", r); return 0; }
