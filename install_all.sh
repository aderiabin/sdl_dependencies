export PATH=/opt/qnx650/host/linux/x86/usr/bin/:$PATH
(cd jsoncpp && make install)
echo "======= JSON successfuly installed! =======" &&\
(cd apr-1.5.0 && make install)
echo "======= APR successfuly installed! =======" &&\
(cd apr-util-1.5.3 && make install)
echo "======= APR UTIL successfuly installed! =======" &&\
(cd apache-log4cxx-0.10.0 && make install)
echo "======= LOGGER successfuly installed! ======="

