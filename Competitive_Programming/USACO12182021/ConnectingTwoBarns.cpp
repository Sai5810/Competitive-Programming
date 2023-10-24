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
#define f first
#define s second

int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
    int t;
    cin >> t;
    for (int i = 0; i < t; ++i) {
        int n, m;
        cin >> n >> m;
        vector<vector<int>> adjList(n);
        int a, b;
        for (int j = 0; j < m; ++j) {
            cin >> a >> b;
            adjList[a - 1].push_back(b - 1);
            adjList[b - 1].push_back(a - 1);
        }
        stack<int> stk;
        stk.push(0);
        set<int> vis;
        vis.insert(0);
        int maxNode = 0;
        while (!stk.empty()) {
            int cur = stk.top();
            stk.pop();
            for (auto j: adjList[cur]) {
                if (vis.find(j) == vis.end()) {
                    stk.push(j);
                    vis.insert(j);
                    maxNode = max(j, maxNode);
                }
            }
        }
        stk.push(n - 1);
        vis.clear();
        vis.insert(n - 1);
        int minNode = n - 1;
        while (!stk.empty()) {
            int cur = stk.top();
            stk.pop();
            for (auto j: adjList[cur]) {
                if (vis.find(j) == vis.end()) {
                    stk.push(j);
                    vis.insert(j);
                    minNode = min(j, minNode);
                }
            }
        }
        int midNode = (maxNode + minNode) / 2;
        if (midNode == maxNode || midNode == minNode) {
            cout << pow(maxNode - minNode, 2) << '\n';
            break;
        }
        stk.push(midNode);
        vis.clear();
        vis.insert(midNode);
        int minMid = midNode;
        int maxMid = midNode;
        while (!stk.empty()) {
            int cur = stk.top();
            stk.pop();
            for (auto j: adjList[cur]) {
                if (vis.find(j) == vis.end()) {
                    stk.push(j);
                    vis.insert(j);
                    minMid = min(j, minMid);
                    maxMid = max(j, maxMid);
                }
            }
        }
        cout << pow(maxNode - minMid, 2) + pow(minNode - maxMid, 2) << '\n';
    }
}
