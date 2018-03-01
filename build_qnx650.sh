export PATH=/opt/qnx650/host/linux/x86/usr/bin/:$PATH
export CC=ntoarmv7-gcc \
export CXX=ntoarmv7-g++ \
export CMAKE_TOOLCHAIN=`realpath qnx_6.5.0_armv7_toolchain.cmake`
export PREFIX="$HOME/sdl_qnx_dependencies/"
export HOST="x86" # Where code will be compied
export TARGET="armv7" # Where code will be executed

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

./build_test_app.sh
echo "======= TEST APPLICATION successfuly installed! ======="
