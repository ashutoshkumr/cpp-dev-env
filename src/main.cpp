#include <iostream>

#include "utils.hpp"

int main(int argc, char** argv)
{
    std::cout << "Up and running !" << std::endl;
    list_dir("/home");
    return 0;
}