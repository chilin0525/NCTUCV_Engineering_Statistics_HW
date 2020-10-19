#include <bits/stdc++.h>
using namespace std;

int main() {
    cin.tie(0), ios::sync_with_stdio(0);
    
    int a[1000];
    vector<int> ans;
    fill(a,a+1000,1);
    a[0]=0;
    a[1]=0;
    for(int i=2;i<1000;i++){
        if(a[i]){
            ans.push_back(i);
            for(int j=i+i;j<1000;j+=i){
                    a[j]=0;
            }
        }
    }

    for(auto &t:ans){
        cout<<t;
    }
    
    return 0;
}