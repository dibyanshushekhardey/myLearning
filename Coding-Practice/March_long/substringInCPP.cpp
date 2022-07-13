#include <bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin>> t;
    while(t--){
        string a;
        cin >> a;
        int n = a.size();
        int total = 0, result = 0;
        for (int i = 0; i < n; i++){
            if (a[i] != a[0] && a[i] != a[n - 1]){
                total += 1;
            }
            else{
                total = 0;
            }
            result = max(result, total);
        }
        if (result == 0)
        cout << -1<<endl;
        else
        cout << result << endl;
    }
}