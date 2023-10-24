#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <sstream>
#include <queue>
#include <deque>
#include <bitset>
#include <iterator>
#include <list>
#include <stack>
#include <map>
#include <set>
#include <functional>
#include <numeric>

using namespace std;
#define ll long long
#define f first
#define s second

int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
    int n, m;
    cin >> n >> m;
    vector<pair<int, int>> interv(n, {0, 0});
    for (int i = 0; i < n; ++i) {
        cin >> interv[i].f >> interv[i].s;
    }
    vector<ll> pos(2 * m + 1, 0);
    sort(interv.begin(), interv.end());
    for (int i = 0; i < n; ++i) {
        for (int j = i; j < n; ++j) {
            for (int k = interv[i].f + interv[j].f; k <= interv[i].s + interv[j].s; ++k) {
                if(i != j) {
                    ++pos[k];
                }
                ++pos[k];
            }
        }
    }
    for (auto i: pos) {
        cout << i << '\n';
    }
}
