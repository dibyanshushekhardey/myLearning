#include <iostream>
using namespace std;

void findElement(int arr[], int size, int key){
    for(int i = 0; i < size; i++){
        if(arr[i] == key){
            cout << "Element found at the position: " << (i + 1);
            break;
        }
    }
}

// driver with code 
int main(){
    int arr[] = {1, 2, 3, 4, 5, 6};
    int n = 6;
    int key = 3;

    // calling function to find the key
    findElement(arr, n, key);
    return 0;
}