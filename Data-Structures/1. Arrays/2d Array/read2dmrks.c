#include <stdio.h>
int main(){
    int i, j;
    int marks[5][5], max_marks;
    printf("\n Enter the marks of 5 students in 3 subjects");
    printf("\n ********************************************");
    for(i = 0; i < 5; i++){
        printf("\n Enter the marks obtained by student %d: ", i+1);
        for(j = 0; j < 3; j++){
                printf("\n marks[%d][%d] = ", i, j);
                scanf("%d", &marks[i][j]);
        }

    }
    for(j = 0; j < 3; j++){
        max_marks = -1;
        for(i = 0; i < 5; i++){
            if (marks[i][j] > max_marks)
                max_marks = marks[i][j];
        }
        printf("\n The maximum marks obtained in the subject %d is: %d", j+1, max_marks);
    }
    return 0;
}