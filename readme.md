# cpp-dev-env
Bootstrapper for a container-based C++ development environment.
- Includes C++ debugging (gdb/cppcheck) and build tools (cmake)
- Includes Boost 1.72
- Includes predefined VSCode settings and extensions
- Derived from https://github.com/microsoft/vscode-remote-try-cpp

## Usage
```sh
cd /home/exp && mkdir -p cmake/build && cd cmake/build && cmake ../.. && make
./exp
```