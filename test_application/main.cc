#include <iostream>
#include <json/json.h>
#include <log4cxx/logger.h>

int jsontest() {
	Json::Value root;
	root["key"] = "value";
	std::string root_str = root.toStyledString();
    
	Json::Reader reader;
	Json::Value parsed;
	reader.parse(root_str, parsed);

	std::string value = root["key"];
	assert (value == "value");
	if ("value" != value) {
		std::cout << "Json get key failed" << std::endl;
		return false;
	}
	return true;
}

int main() {
	return 0;
}