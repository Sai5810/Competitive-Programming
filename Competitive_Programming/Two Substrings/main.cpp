#include <iostream>
#include <string>
using namespace std;
int main() {
    string s;
    cin >> s;
    int i = 0;
    while(i < s.length() - 1) {
        if(s.substr(i,2) == "BA"){
            i += 2;
            while(i < s.length() - 1) {
                if(s.substr(i,2) == "AB"){
                    cout << "YES";
                    return 0;
                }
                ++i;
            }
            i = 0;
            while(i < s.length() - 1) {
                if(s.substr(i,2) == "AB"){
                    i += 2;
                    while(i < s.length() - 1) {
                        if(s.substr(i,2) == "BA"){
                            cout << "YES";
                            return 0;
                        }
                        ++i;
                    }
                    cout << "NO";
                    return 0;
                }
                ++i;
            }
        }
        ++i;
    }
    cout << "NO";
}
