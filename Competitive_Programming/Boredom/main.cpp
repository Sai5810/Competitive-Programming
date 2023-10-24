#include <iostream>
#include <vector>
#include <algorithm>
#include <cmath>
using namespace std;
int main() {
    int n;
    cin >> n;
    vector<int> seq(n, 0);
    for (int i = 0; i < n; ++i) {
        cin >> seq[i];
    }
    int mx = *max_element(seq.begin(), seq.end());
    if(seq.size() == 2){
        cout << mx;
        return 0;
    }
    vector<vector<int>> cost(3, vector<int>(mx));
    for(auto i: seq) {
        ++cost[0][i-1];
    }
    for(int i = 0; i < mx; ++i) {
        cost[1][i] = cost[0][i] * (i + 1);
    }
    cost[2][0] = cost[1][1];
    for(int i = 1; i < mx - 1; ++i) {
        cost[2][i] = cost[1][i - 1] + cost[1][i + 1];
    }
    cost[2][mx - 1] = cost[1][mx - 2];
    cost[2][1] += cost[1][0];
    cost[2][mx-2] += cost[1][mx-1];
    vector<int> des(mx, 0);
    for(int i = 0; i < mx; ++i){
        des[i] = cost[1][i] - cost[2][i];
    }
    int pts = 0;
    while(any_of(des.begin(), des.end(), [](int i){return i != -2147483648;})){
        int x = distance(des.begin(), max_element(des.begin(), des.end()));
        pts += cost[1][x];
        des[x] = -2147483648;
        if(x+1 < mx){
            if(x+2 < mx && des[x+2] != -2147483648) {
                des[x+2] += cost[1][x+1];
            }
            des[x+1] = -2147483648;
        }
        if(x-1 >= 0) {
            if(x-2 >= 0 && des[x-2] != -2147483648) {
                des[x-2] += cost[1][x-1];
            }
            des[x-1] = -2147483648;
        }
    }
    cout << pts;
}