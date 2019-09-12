#include <stdio.h>
#include <stdlib.h>
#include "sort.h"
#include "printArray.h"

// main program: sorts and prints an array

// number of elements in the array
#define NUMBER_OF_NAMES 11

// the array to sort
char* names[NUMBER_OF_NAMES] = {
  "John",
  "Sam",
  "Marie",
  "Ben",
  "Brittany",
  "Sarah",
  "Walter",
  "Wanda",
  "Jane",
  "Annika",
  "Peter",
};


// a (private) function to print a line of "=" characters
static void printSeparatorLine() {
  printf("================================================================\n");
}


// our main function
//
// - returns: the exit status of the program
int main(void) {
  // index variable for for-loop
  int i;

  //yeet
  printStringArray(names, NUMBER_OF_NAMES);

  // sort the array
  sort(names, NUMBER_OF_NAMES);

  printSeparatorLine();

  // print each element of the array
  printStringArray(names, NUMBER_OF_NAMES);

  // return with "success" status
  return EXIT_SUCCESS;
}


