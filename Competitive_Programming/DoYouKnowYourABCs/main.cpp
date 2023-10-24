#include <iostream>
#include <vector>
#include <stack>
#include <tuple>
#include <set>
#include <string>
#include <chrono>
#include <algorithm>

using namespace std;

int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
    int t;
    cin >> t;
    for (int i = 0; i < t; ++i) {
        int n;
        cin >> n;
        vector<int> num(n);
        for (int j = 0; j < n; ++j) {
            cin >> num[j];
        }
        set<int> numSet(num.begin(), num.end());
        for (int j = 1; j < n; ++j) {
            for (int k = j; k < n; ++k) {
                numSet.insert(num[k] - num[k - j]);
            }
        }
        for()
    }
}
