#include <stdio.h>

void main(void) {
	int i = 1;
	for(i; i <= 100; i++){
		printf("%d ",i);
		if (!(i % 10)) {
			printf("\n");
		}
	}
}
