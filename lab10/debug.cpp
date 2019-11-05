#include <iostream>

using namespace std;

/**
 * This function retruns the square of the number i passed as parameter
 * to the function.
 */
void square(int i)
{
    cout <<"The square of the number "<< i  << " : " << i*i <<"\n";
}

int main(int argc, char **argv)
{

    int i = 1;

    //The while loop gets the square of the odd numbers from i = 1 to 100.
    //This should stop when i reaches 100.
    while(i!=100){
      square(i);   //Call the square function
      i=i+2;       //Increment i by two
    }

    return 0;
}

