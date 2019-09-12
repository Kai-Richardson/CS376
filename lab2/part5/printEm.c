#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {

	#define NONSENSICAL -9999999

	if (atoi(argv[1]) < 1) {
		printf("Not an integer");
		return NONSENSICAL;
	}

	if (argc < 2) {
		printf("You put in whack stuff! Bye.");
		return NONSENSICAL;
	}

	int i;
	int w = atoi(argv[1]);
	for (i = 2; i < argc; i++) {
		printf("%.*s\n", w, argv[i]);
	}
}
