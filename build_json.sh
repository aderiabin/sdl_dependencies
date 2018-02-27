cd jsoncpp
cmake -DCMAKE_TOOLCHAIN_FILE=../qnx_6.5.0_linux_x86.cmake \
      -DCMAKE_INSTALL_PREFIX=/opt/qnx650/target/qnx6/usr/ \
      .
make