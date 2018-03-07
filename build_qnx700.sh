export PATH=/opt/qnx700/host/linux/x86_64/usr/bin/:$PATH
export CC=ntoarmv7-gcc \
export CXX=ntoarmv7-g++ \
export CMAKE_TOOLCHAIN=`realpath toolchain_cmake/Toolchain-QNX7-QCC-AArch64.cmake`
export PREFIX="$HOME/sdl_qnx_dependencies/"
export HOST="x86_64" # Where code will be compied
export TARGET="aarch64" # Where code will be executed

./build_json.sh
(cd jsoncpp && sudo make install)
echo "======= JSON successfuly installed! ======="

./build_apr.sh
(cd apr-1.5.0 && sudo make install)
echo "======= APR successfuly installed! ======="

./build_apr-util.sh
(cd apr-util-1.5.3 && sudo make install)
echo "======= APR UTIL successfuly installed! ======="

./build_logger.sh
(cd apache-log4cxx-0.10.0 && sudo make install)
echo "======= LOGGER successfuly installed! ======="

./build_bson.sh
(cd bson_c_lib && sudo make install)
echo "======= LOGGER successfuly installed! ======="

./build_test_app.sh
echo "======= TEST APPLICATION successfuly installed! ======="
