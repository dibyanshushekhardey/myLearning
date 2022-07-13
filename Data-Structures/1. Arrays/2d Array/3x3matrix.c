#include <stdio.h>
#include <conio.h>

int main(){
    int i, j, mt[3][3];
    printf("\n Enter the elements of the matrix: ");
    for(i = 0; i < 3; i++){
        for(j = 0; j < 3; j++)
            scanf("%d", &mt[i][j]);
    }
    printf("\n The elements of the matrix are: ");
    for(i = 0; i < 3; i++){
        printf("\n");
        for(j = 0; j < 3; j++)
            printf("\t %d", mt[i][j]);
    }
    return 0;
}