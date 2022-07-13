#include <bits/stdc++.h>
using namespace std;

int main() {
  // your code goes here
  int t;cin>>t;
  while(t--)
  {
      int x;
      int  c=0;
      unordered_map<int,int> m;
      for(int i=0;i<4;i++) 
      {
          cin>>x;
          m[x]++;
      }
      if(m.size()==4|| m.size()==3) cout<<2<<endl;
      else if(m.size()==1) cout<<0<<endl;
      else 
      {
          for(auto x:m)
          {
              if(x.second%2==0)cout<<2<<endl;
              else cout<<1<<endl;
              break;
          }
      }
      
      
      
      
  }
  return 0;
}