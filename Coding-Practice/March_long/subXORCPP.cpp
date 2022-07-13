#include <iostream>
using namespace std;
#define ll long long
#define input() int t; cin>>t; while(t--)
ll mod=998244353;

int main(){
    input(){
        ll n;
        cin >> n;
        string s;
        cin >> s;

        ll a[n] = {0};
        ll c = 1;
        ll solution = 0;

        if(s[0] == '1'){
            a[0] = 1;
        }    

        ll arr = a[0];

        for(ll i = 1; i < n; i++){
            if(s[i] == '1'){
                arr+=(i+1);
            }
            a[i] = arr;
            a[i] = a[i] % 2;
        }

        for(ll i = n-1; i >= 0; i--){
            if(a[i] == 1){
                solution += c;
                solution = solution % mod;
            }
            c = c * 2;
            c = c % mod;
        }
        cout << solution % mod << endl;
    }
    return 0;
}