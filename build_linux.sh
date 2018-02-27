export PATH=:$PATH
export CC=gcc \
export CXX=g++ \
export CMAKE_TOOLCHAIN=
export PREFIX="~/sdl_dependencies/"
export HOST= # Where code will be compied
export TARGET= # Where code will be executed

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