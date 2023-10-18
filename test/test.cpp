#include <iostream>

extern "C" {
    int nunum();
}

int main() {
    std::cout << "ttest " << nunum() << std::endl;
}
