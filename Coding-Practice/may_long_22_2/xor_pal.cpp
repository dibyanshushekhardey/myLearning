// Online C++ compiler to run C++ program online
#include <iostream>
using namespace std;
int main() {
    // Write C++ code here
    //std::cout << "Hello world!";
    int c;
    cin >> c;
    while(c--){
        long long int n, x, y, i, co=0;
        cin >> n;
        string s;
        cin >> s;
        for(i=0; i < n / 2; i++){
            if(s[i]!=s[n-1-i]){
                co+=1;
            }
        }
        int ans;
        if(co%2==0){
            ans=co/2;
        }
        else{
            ans=co/2+1;
        }
        cout << ans << endl;

    }
    
    return 0;
}