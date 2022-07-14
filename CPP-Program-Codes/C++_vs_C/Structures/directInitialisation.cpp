#include <iostream>
using namespace std;

struct Record{
    int x = 7;
};

int main(){
    Record s;
    cout << s.x << endl;
    return 0;
}