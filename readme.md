# cpp-dev-env
Bootstrapper for a container-based C++ development environment.
- Includes C++ debugging (gdb/cppcheck) and build tools (cmake)
- Includes Boost 1.72
- Includes predefined VSCode settings and extensions
- Derived from https://github.com/microsoft/vscode-remote-try-cpp

## Usage

1. Make sure you have docker and VSCode extension for *Remote Development* installed.
2. Clone this repository, open VSCode inside it and click on *Remote Explorer* icon.
3. From dropdown, choose *container*, click on *+* and choose *Open Current Folder in Container*.
4. After the container is ready, build the sample project which uses boost.
```sh
cd /home/exp && mkdir -p cmake/build && cd cmake/build && cmake ../.. && make
./exp
```