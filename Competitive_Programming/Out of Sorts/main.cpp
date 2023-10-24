#include <iostream>
#include <vector>
#include <algorithm>
#include <fstream>
using namespace std;
#define f first
#define s second
#define ll long long
int main() {
    freopen("sort.in","r",stdin);
    freopen("sort.out","w",stdout);
    int n;
    cin >> n;
    vector<ll> a(n, 0);
    vector<ll> sortA;
    vector<pair<ll,ll>> ivl;
    for(int i = 0; i < n; ++i){
        cin >> a[i];
    }
    sortA = a;
    sort(sortA.begin(), sortA.end());
    for(int i = 0; i < n; ++i){
        ll sa = find(sortA.begin(), sortA.end(), a[i]) - sortA.begin();
        if(i < sa){
            ivl.emplace_back(i, sa);
        } else if(i > sa) {
            ivl.emplace_back(sa, i);
        }
    }
    sort(ivl.begin(), ivl.end());
    int ind = 0;
    for (int i=1; i < ivl.size(); i++){
        // If this is not first Interval and overlaps
        // with the previous one
        if (ivl[ind].s >= ivl[i].f){
            // Merge previous and current Intervals
            ivl[ind].s = max(ivl[ind].s, ivl[i].s);
            ivl[ind].f = min(ivl[ind].f, ivl[i].f);
        } else {
            ind++;
            ivl[ind] = ivl[i];
        }
    }
    ll moo = 0;
    for(int i = 0; i <= ind; ++i){
        moo += ivl[i].s - ivl[i].f;
    }
    cout << moo + 1;
}
