#include <iostream>
#include "include/Pet.h"
#include <memory>
int main(int, char**) {
    std::cout << "Hello, world!\n";
    std::string n = "cat";
    std::unique_ptr<Pet> pet(new Pet(n));
    pet->eat();
}