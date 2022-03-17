// Reference: https://medium.com/@dexterchan_44737/visual-studio-code-build-and-debug-a-c-with-cmake-on-mac-os-7633bc59bf34
#include <string>
class Pet{
    private:std::string name;
    public:Pet(std::string& name);
    void sound();
    void eat();
    std::string& getName();
};