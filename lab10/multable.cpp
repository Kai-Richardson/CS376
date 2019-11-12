#include <iostream>
#include <iomanip> // for setw
#include <cstdlib> // for atoi

using namespace std;

/**
 * This function crates and returns the multiplication table for the number k
 * passed as parameter to the function.
 */
int ** CreateMulTable(int rows,int columns)
{
    int entry;
    int **A= new int*[rows];
    for(int i=0; i<rows; i++)
    {
        A[i]=new int[columns];
    }
    for(int i=0; i<rows; i++)
    {
        for(int j=0; j<columns; j++)
        {
            // Since we index starting at 0, we need to shift
            // by 1 when creating the table.
            A[i][j]=(i+1)*(j+1);
        }
    }

    return A;
}

/**
 * This function displays the multiplication table
 *
 */
void PrintMulTable(int **A,int rows,int columns)
{
    cout << "The multiplication table is:" << endl;

    //Print the multiplication table
    for(int i=0; i<rows; i++)
    {
        for(int j=0; j<columns; j++)
        {
            cout<<setw(5)<<A[i][j];
            // setw(5) formats the output so each number gets 5 spaces.
        }
        cout<<"\n";
    }
     cout<<"\n";
}

int main(int argc, char **argv)
{
    if(argc!=3)
    {
        cout<<"USAGE: "<<argv[0]<<" rows columns\n";
        exit(1);
    }

    // Assign rows and columns to the command line arguments
    int rows=atoi(argv[1]);
    int columns=atoi(argv[2]);

    // Create and print the table
    int **A= CreateMulTable(rows, columns);
    PrintMulTable(A,rows,columns);
}




