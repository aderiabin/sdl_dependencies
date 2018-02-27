#include <iostream>
#include <cassert>
#include <fstream>
#include <json/json.h>
#include <log4cxx/logger.h>
#include <log4cxx/propertyconfigurator.h>
#include <log4cxx/spi/loggingevent.h>

bool jsontest() {
	Json::Value root;
	root["key"] = "value";
	std::string root_str = root.toStyledString();
    
	Json::Reader reader;
	Json::Value parsed;
	reader.parse(root_str, parsed);

	std::string value = root["key"].asString();
	if ("value" != value) {
		std::cout << "Json test failed" << std::endl;
		return false;
	}
	return true;
}

bool logger_test() {
	log4cxx::PropertyConfigurator::configure("log4cxx.properties");
    log4cxx::LoggerPtr loggerMyMain(log4cxx::Logger::getLogger( "MainLogger"));
	std::string message = "DebugMessage";
	LOG4CXX_DEBUG(loggerMyMain, message);
	std::string log_content;
	std::ifstream infile;
	infile.open ("logfile.log");
	infile >> log_content;
	if (log_content != message) {
		std::cout << "Logger test failed" << std::endl;
		return false;
	}
	return true;
}


int main() {
	if(jsontest()) {
		std::cout << "Json test passed" << std::endl;
	}
	if(logger_test()) {
		std::cout << "Logger test passed" << std::endl;
	}
	return 0;
}