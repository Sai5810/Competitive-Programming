#include <iostream>
#include <vector>
#include <stack>
#include <tuple>
#include <set>
#include <string>
#include <chrono>

using namespace std;
bool vis[25][25][19683];

bool ifWin(vector<vector<char>> board) {
    vector<char> moo = {'M', 'O', 'O'};
    vector<char> oom = {'O', 'O', 'M'};
    for (const auto &j: board) {
        if (j == moo || j == oom) {
            return true;
        }
    }
    for (int j = 0; j < 3; ++j) {
        vector<char> col = {board[0][j], board[1][j], board[2][j]};
        if (col == moo || col == oom) {
            return true;
        }
    }
    vector<char> d1 = {board[0][0], board[1][1], board[2][2]};
    vector<char> d2 = {board[0][2], board[1][1], board[2][0]};
    if (d1 == moo || d1 == oom || d2 == moo || d2 == oom) {
        return true;
    }
    return false;
}

int main() {
    int pow3[] = {1, 3, 9, 27, 81, 243, 729, 2187, 6561};

    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
    int n;
    cin >> n;
//    chrono::duration<double, std::milli> dur{};
    auto start = chrono::high_resolution_clock::now();
    vector<vector<string>> maze(n, vector<string>(n));
    int init1, init2;
    for (int i = 0; i < n; ++i) {
        string line;
        cin >> line;
        int k = 0;
        for (int j = 0; j < line.size(); j += 3) {
            maze[i][k] = line.substr(j, 3);
            if (maze[i][k] == "BBB") {
                init1 = i;
                init2 = k;
            }
            ++k;
        }
    }
//    dur = chrono::high_resolution_clock::now() - start;
//    cout << dur.count() << '\n';
//    start = chrono::high_resolution_clock::now();
    set<vector<vector<char>>> wins;
    stack<tuple<int, int, vector<vector<char>>>> stack;
    stack.push(make_tuple(init1, init2, vector<vector<char>>(3, vector<char>(3, '.'))));
    vis[0][0][0] = true;
    while (!stack.empty()) {
        tuple<int, int, vector<vector<char>>> cur = stack.top();
        stack.pop();
        vector<tuple<int, int, vector<vector<char>>>> adj;
        if (maze[get<0>(cur)][get<1>(cur) + 1] != "###") {
            adj.emplace_back(get<0>(cur), get<1>(cur) + 1, get<2>(cur));
        }
        if (maze[get<0>(cur)][get<1>(cur) - 1] != "###") {
            adj.emplace_back(get<0>(cur), get<1>(cur) - 1, get<2>(cur));
        }
        if (maze[get<0>(cur) - 1][get<1>(cur)] != "###") {
            adj.emplace_back(get<0>(cur) - 1, get<1>(cur), get<2>(cur));
        }
        if (maze[get<0>(cur) + 1][get<1>(cur)] != "###") {
            adj.emplace_back(get<0>(cur) + 1, get<1>(cur), get<2>(cur));
        }
        for (auto i: adj) {
            string node = maze[get<0>(i)][get<1>(i)];
            int ctr = 0;
            int b3 = 0;
            if (node != "..." && node != "BBB" && get<2>(i)[node[1] - '0' - 1][node[2] - '0' - 1] == '.') {
                get<2>(i)[node[1] - '0' - 1][node[2] - '0' - 1] = node[0];
                for (const auto &a: get<2>(i)) {
                    for (auto b: a) {
                        if (b == '.') {
                            b3 += pow3[ctr];
                        } else if (b == 'M') {
                            b3 += pow3[ctr] * 2;
                        }
                        ++ctr;
                    }
                }
                if (ifWin(get<2>(i))) {
                    wins.insert(get<2>(i));
                } else if (!vis[get<0>(i)][get<1>(i)][b3]) {
                    stack.push(i);
                    vis[get<0>(i)][get<1>(i)][b3] = true;
                }
            } else {
                for (const auto &a: get<2>(i)) {
                    for (auto b: a) {
                        if (b == '.') {
                            b3 += pow3[ctr];
                        } else if (b == 'M') {
                            b3 += pow3[ctr] * 2;
                        }
                        ++ctr;
                    }
                }
                if (!vis[get<0>(i)][get<1>(i)][b3]) {
                    stack.push(i);
                    vis[get<0>(i)][get<1>(i)][b3] = true;
                }
            }
        }
    }
    cout << wins.size() << '\n';
//    dur = chrono::high_resolution_clock::now() - start;
//    cout << dur.count() << '\n';
}
