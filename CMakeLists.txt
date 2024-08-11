cmake_minimum_required(VERSION 3.29)

project (zmqtest)

add_executable (zmqtest main.cc)

target_link_libraries(zmqtest PUBLIC zmq zmqpp)

install (TARGETS zmqtest DESTINATION bin)
