# sdl_dependencies
This repository contains all dependencies for SDL 

## List of dependensies:
 - apr
 - apr-util
 - log4cxx 
 - jsoncpp
 - libbson

## Build for linux:

### Preconditions for building:
  - installed cmake
  - installed g++
  - installed gcc
  
###  Linux Build steps:
For build and install sdl dependencies for linux run:
 
 `./build_linux.sh`
 
 Note that is will require sudo access for installing libraries to the system
 
 Libraries will be installed to : "$HOME/sdl_dependencies/"
 
 # Build for qnx:
 
### Preconditions for building:
  - installed cmake
  - installed qnx 6.5 sdk in /opt/qnx/650
  - qnx etc staff in /etc/qnx
  - Environment variables : QNX_HOST, QNX_TARGET
  
 `./build_qnx.sh`
 
 Note that is will require sudo access for installing libraries to the system
 
 Libraries will be installed to : "$HOME/sdl_qnx_dependencies/"
 
## Test Application

Test application is able to check that you is able to compile application with jsoncpp and log4cxx dependenciees.
