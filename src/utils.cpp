#include <iostream>

#include "boost/filesystem.hpp"
#include "utils.hpp"

void list_dir(const std::string& path)
{
    if (boost::filesystem::is_directory(path)) {
        std::cout << path << " is a directory, and contains:" << std::endl;

        for (auto& entry : boost::filesystem::directory_iterator(path)) {
            std::cout << entry << std::endl;
        }
    }
}