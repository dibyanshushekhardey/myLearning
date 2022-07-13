#include <iostream>
using namespace std;

int main(){
    int t;
    cin >> t;
    while(t--){
        int n;
        cin >> n;
        string st;
        cin >> st;
        int c1 = 0, c2 = 0;
        for (int i = 0; i < n;i++){
            if(st[i]=='1'){
                c2++;
                if(st[i] == st[i+1]){
                    c1++;
                }
            }
        }

        if (c2 == 0) cout<<0<<endl;
        else{
            if(c1==0)cout<<1<<endl;
            else{
                cout<<2<<endl;
            }
        }
    }
    return 0;
}