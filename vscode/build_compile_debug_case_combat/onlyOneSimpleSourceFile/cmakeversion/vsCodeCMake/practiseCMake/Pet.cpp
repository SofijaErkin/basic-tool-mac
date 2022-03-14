#include "include/Pet.h" 
#include <iostream> 
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