#include <bits/stdc++.h>
using namespace std;

int main() {
    cin.tie(0), ios::sync_with_stdio(0);
    
    long long score;
    vector<long long> student;
    while(cin>>score){
        student.emplace_back(score);
    }

    int passnum=0;
    for(auto &t:student){
        if(t>=60)++passnum;
    }
    
    cout<<passnum<<'\n';
    return 0;
}