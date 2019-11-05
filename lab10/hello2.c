#include <stdio.h>

int main(void) {
        int i;
        for(i = 0; i < 10; i++) {
                if (i == 0) {
                        printf("Hello world!\n");
                }
                else if (i == 9) {
                        printf("Hello again!\n");
                }
                else {
                        printf("Goodbye!\n");
                }
        }
        return 0;
}

