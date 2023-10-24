#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
#define f first
#define s second
#define ll long long
int main() {
    freopen("sort.in","r",stdin);
    freopen("sort.out","w",stdout);
    int n;
    cin >> n;
    vector<pair<ll,ll>> a(n, make_pair(0,0));
    for(int i = 0; i < n; ++i){
        a[i].s = i;
        cin >> a[i].f;
    }
    sort(a.begin(),a.end());
    ll moo = 0;
    for(int i = 0; i < n; ++i){
        moo = max(moo, a[i].s - i);
    }
    cout << moo + 1;
}