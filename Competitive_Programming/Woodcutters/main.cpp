#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
#define f first
#define s second
#define ll long long
int main() {
    int n;
    cin >> n;
    vector<pair<ll, ll>> xh(n, make_pair(0,0));
    for(int i = 0; i < n; ++i){
        cin >> xh[i].f >> xh[i].s;
    }
    int t = 1;
    pair<ll, ll> fall = {xh[0].f - xh[0].s, xh[0].f};
    if(n >= 2){
        t = 2;
    }
    for(int i = 1; i < n - 1; ++i){
        if(fall.s < xh[i].f - xh[i].s){
            fall.f = xh[i].f - xh[i].s;
            fall.s = xh[i].f;
            ++t;
        } else if(xh[i].f + xh[i].s < xh[i+1].f) {
            fall.f = xh[i].f;
            fall.s = xh[i].f + xh[i].s;
            ++t;
        } else {
            fall.f = xh[i].f;
            fall.s = xh[i].f;
        }
    }
    cout << t;
}
