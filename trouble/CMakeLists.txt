project(trouble C)
cmake_minimum_required(VERSION 3.0)

exec_program("/bin/sh" ${CMAKE_CURRENT_SOURCE_DIR} 
	ARGS "-c 'cat /dev/urandom |tr -dc a-zA-Z0-9 |head -c 32'" OUTPUT_VARIABLE random_password)

add_definitions(-Dpassword="${random_password}")
set(CMAKE_C_COMPILER musl-gcc)
#why the hell there's still is a dynsym section with this?? doesn't happen with normal libc
set(CMAKE_C_FLAGS "-Wall -Wextra -Wshadow -fvisibility=hidden -s -static -O3 -funroll-loops -std=gnu11")
add_executable(${PROJECT_NAME} src/trouble.c)

add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD COMMAND ${CMAKE_COMMAND} -E echo "The password is: " ${random_password})