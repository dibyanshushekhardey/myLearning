#include <stdio.h>
#include <stdlib.h>

int main()
{

    char line[255];

    FILE * fpointer = fopen("employees.txt", "r");

    fgets(line, 255, fpointer); // fgets used for individual line in the file 
    fgets(line, 255, fpointer); // second line in the file 
    printf("%s", line); //first line of file

    fclose(fpointer);
    return 0;
}
