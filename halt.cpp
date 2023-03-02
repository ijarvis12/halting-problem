#include <iostream>
using namespace std;

bool f(bool);
bool g(bool);

int main() {
        //Preamble
        cout << endl;
        cout << "-------------------------------------------------------" << endl;
        cout << "-- Function f(x) predicts what function g(x) will do --" << endl;
        cout << "-- given f(g(x)) and then g(x) does the opposite.    --" << endl;
        cout << "-------------------------------------------------------" << endl;
        cout << endl;

        //First input
        cout << "The input x = true" << endl;
        cout << "f(g(true)) = ";
        bool result = f(g(true));
        cout << boolalpha << result << endl;
        cout << "g(true) = ";
        result = g(true);
        cout << result << endl;
        cout << endl;

        //Second input
        cout << "The input x = false" << endl;
        cout << "f(g(false)) = ";
        result = f(g(false));
        cout << result << endl;
        cout << "g(false) = ";
        result = g(false);
        cout << result << endl;
        cout << endl;

        return 0;
}

bool f(bool x) {
        return g(x);
}

bool g(bool x) {
        return !x;
}
