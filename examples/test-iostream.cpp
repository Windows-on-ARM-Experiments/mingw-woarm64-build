#include <iostream>
#include <windows.h>
#include <iomanip>

int main() 
{
    std::cout << "Hello World!" << std::endl;

    std::cout << "==" << -17 << "==" << std::endl;
    std::cout << "==" << std::setw(6) << -17 << "==" << std::endl;
    std::cout << std::left;
    std::cout << "==" << std::setw(6) << -17 << "==" << std::endl << std::endl;

    std::cout << "==" << "hello" << "==" << std::endl;
    std::cout << "==" << std::setw(20) << "hello" << "==" << std::endl;
    std::cout << std::right;
    std::cout << "==" << std::setw(20) << "hello" << "==" << std::endl;

    std::cout << "ok" << std::endl;
    return 0;
}