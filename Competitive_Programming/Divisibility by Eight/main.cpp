#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
int main() {
    string s;
    cin >> s;
    vector<long long> nm;
    for(char const c: s) {
        nm.push_back(c - '0');
    }
    long long n = s.size();
    for(int r = 1; r <= min(3LL,n); ++r){
        vector<bool> v(n);
        fill(v.end() - r, v.end(), true);
        do {
            vector<long long> q;
            for(long long i = n - 1; i >= 0; --i){
                if(v[i]){
                    q.push_back(nm[i]);
                }
                if(q.size() == 3){
                    break;
                }
            }
            long long decimal = 1;
            long long total = 0;
            for (auto& it : q){
                total += it * decimal;
                decimal *= 10;
            }
            //cout << total << "\n";
            if(total % 8 == 0){
                cout << "YES\n" << total;
                return 0;
            }
        } while (next_permutation(v.begin(), v.end()));
    }
    cout << "NO";
}
