#include <stdio.h>
int main(){
    int sales[5][3], i, j, total_sales=0;
    //input data
    printf("\n Enter the data");
    printf("\n *****************");
    for(i = 0; i < 5; i++){
        printf("\n Enter the sales of 3 items sold by the salesman %d: ", i + 1);
        for(j = 0; j < 3; j++)
            scanf("%d", &sales[i][j]);
    }
    // print total sales by each salesman
    for(i = 0; i < 5; i++){
        total_sales = 0;
        for(j = 0; j < 3; j++)
            total_sales += sales[i][j];
        printf("\n Total sales by salesman %d = %d", i+1, total_sales);
    }
    // total sales for each item
    for(i = 0; i < 3; i++){
        total_sales = 0;
        for(j = 0; j < 5; j++)
            total_sales += sales[j][i];
        printf("\n Total sales of item %d = %d", i+1, total_sales);
    }
    return 0;
}