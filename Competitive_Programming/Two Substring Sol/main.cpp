#include<iostream>
#include<string>

using namespace std;


int main() {
    ios::sync_with_stdio(false);
    cin.tie();
    string s;
    cin >> s;
    if (s.find("BA") == string::npos || s.find("AB") == string::npos) {
        cout << "NO" << endl;
        return 0;
    }
    unsigned int ps = s.find("BA");
    if (s.find("AB", ps + 2) != string::npos) {
        cout << "YES" << endl;
        return 0;
    }
    ps = s.find("AB");
    if (s.find("BA", ps + 2) != string::npos) {
        cout << "YES" << endl;
        return 0;
    }
    cout << "NO" << endl;
}
