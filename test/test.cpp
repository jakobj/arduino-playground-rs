#include <iostream>

extern "C" {
    int nunum();
    int nunumrs();
}

int main() {
    std::cout << "ttest " << nunum() << std::endl;
    std::cout << "ttestrs " << nunumrs() << std::endl;
}
