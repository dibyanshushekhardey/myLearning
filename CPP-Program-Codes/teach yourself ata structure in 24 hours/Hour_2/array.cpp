// array.cpp
// demonstrates arrays
#include <iostream>
using namespace std;

int main(){
    int arr[100];
    int nElems = 0;
    int j;
    int searchKey;

    // insert 10 items
    arr[0] = 77; 
    arr[1] = 99;
    arr[2] = 44;
    arr[3] = 55;
    arr[4] = 22;
    arr[5] = 88;
    arr[6] = 11;
    arr[7] = 00;
    arr[8] = 66;
    arr[9] = 33;
    nElems = 10;

    // display items
    for(int j = 0; j< nElems; j++){
        cout << arr[j] << " ";
    
    }
    cout << endl; 

    // find item with key 66
    searchKey = 66;
    for(j = 0; j < nElems; j++){
        if(arr[j] == searchKey){
            break;
        }
    }
    if(j == nElems){
        cout << "Can't find" << searchKey<< endl;
    }
    else{
        cout <<"Found"<<searchKey<<endl;
    }
    // delete item with key 55
    searchKey = 55;
    cout << "Deleting " << searchKey<< endl;
    for(j = 0; j< nElems; j++){
        if (arr[j] == searchKey){
            break;
        }
    }
}