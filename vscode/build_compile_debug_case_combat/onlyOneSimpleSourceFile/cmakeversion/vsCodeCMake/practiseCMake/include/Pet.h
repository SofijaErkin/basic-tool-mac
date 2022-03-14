#include <string>
class Pet{
    private:std::string name;
    public:Pet(std::string& name);
    void sound();
    void eat();
    std::string& getName();
};