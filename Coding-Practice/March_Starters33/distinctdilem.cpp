#include <bits/stdc++.h>
#include <iostream>
using namespace std;

int main(){
    int t;
    cin >> t;
    while(t--){
        int n;
        cin >> n;
        int sum = 0;
        for(int i = 0; i < n; i++){
            int j;
            cin >> j;
            sum += j;
        }
        float x = (-1+sqrt(1+8*sum))/2;
        x = floor(x);
        cout << x << endl;

    }
    return 0;
}