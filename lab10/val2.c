#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    char *p = malloc(1);
    *p = 'a';

    char c = *p;

    printf("\n [%c]\n",c);


    c = *p;
    free(p);
    return 0;
}
