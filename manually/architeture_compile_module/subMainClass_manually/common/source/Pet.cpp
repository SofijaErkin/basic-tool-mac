// Reference: https://medium.com/@dexterchan_44737/visual-studio-code-build-and-debug-a-c-with-cmake-on-mac-os-7633bc59bf34
#include <iostream> 
#include "../include/Pet.h"  // Have changed
Pet::Pet(std::string &_name){
    this->name = _name; 
} 
void Pet::sound(){
    std::cout << this->name << " sounds" << std::endl; 
} 
void Pet::eat(){
    std::cout << this->name << " eats" << std::endl; 
} 
std::string & Pet::getName(){
    return this->name; 
}


