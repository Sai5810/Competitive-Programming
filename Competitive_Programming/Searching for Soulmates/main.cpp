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
#include <cmath>

using namespace std;
#define ll long long

ll reduce(ll m) {
    m |= m >> 1;
    m |= m >> 2;
    m |= m >> 4;
    m |= m >> 8;
    m |= m >> 16;
    m |= m >> 32;
    return m;
}

ll countBits(ll m) {
    ll bits;
    for (bits = 0; m != 0; ++bits) {
        m >>= 1;
    }
    return bits;
}

int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
    int n;
    cin >> n;
    for (int i = 0; i < n; ++i) {
        ll f, s;
        cin >> f >> s;
        if (f == s) {
            cout << 0 << '\n';
        } else if (f > s) {
            ll fp2 = reduce(f - 1) + 1;
            ll sp2 = reduce(s);
            sp2 = sp2 - (sp2 >> 1);
            cout << fp2 - f + s - sp2 + countBits(fp2) - countBits(sp2) << '\n';
        } else {
            cout << "deezus\n";
        }
    }
}
