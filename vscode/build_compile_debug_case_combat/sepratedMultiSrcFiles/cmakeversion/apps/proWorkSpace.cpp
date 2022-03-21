// Reference: https://medium.com/@dexterchan_44737/visual-studio-code-build-and-debug-a-c-with-cmake-on-mac-os-7633bc59bf34
#include <iostream>
#include "../include/Pet.h"
#include <memory>
int main(int, char **)
{
    std::cout << "Hello, world!\n";
    std::string n = "cat";
    std::unique_ptr<Pet> pet(new Pet(n));
    pet->eat();
}

