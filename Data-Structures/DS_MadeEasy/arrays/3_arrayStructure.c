# include <stdio.h>
typedef struct madeeasy{
    char * name;
    int roll;    
}s;

int main(){
    s arr[2]={{"made", 10}, {"easy, 11"}};
    printf("%s %d", arr[0]);
    return 0;
}