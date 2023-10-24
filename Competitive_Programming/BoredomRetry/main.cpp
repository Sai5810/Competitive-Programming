#include <iostream>
using namespace std;
int main() {
    int n;
    cin >> n;
    long long num[100001] = {0};
    int x;
    for(int i = 0; i < n; ++i) {
        cin >> x;
        num[x]++;
    }
    long long n1 = num[1];
    long long n2 = 0;
    for(long long i = 2; i <= 100000; ++i) {
        long long cur = max(n1, n2 + num[i] * i);
        n2 = n1;
        n1 = cur;
    }
    cout << n1;
}
