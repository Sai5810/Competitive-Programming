#include <iostream>

using namespace std;
#define rep(i, s, e) for(long long (i) = s; (i) < (e); (i) ++)

int main() {
    ios::sync_with_stdio(false);
    cin.tie();
    string s;
    cin >> s;
    long long n = s.size();
    rep(i, 0, n) if ((s[i] - '0') % 8 == 0) {
            cout << "YES" << endl;
            cout << s[i] - '0' << endl;
            return 0;
        }
    rep(i, 0, n) rep(j, i + 1, n) {
            long long tmp = (s[i] - '0') * 10 + (s[j] - '0');
            if (tmp % 8 == 0) {
                cout << "YES" << endl;
                cout << tmp << endl;
                return 0;
            }
        }

    rep(i, 0, n) rep(j, i + 1, n) rep(k, j + 1, n) {
                long long tmp = (s[i] - '0') * 100 + (s[j] - '0') * 10 + s[k] - '0';
                if (tmp % 8 == 0) {
                    cout << "YES" << endl;
                    cout << tmp << endl;
                    return 0;
                }
            }
    cout << "NO" << endl;
    return 0;
}