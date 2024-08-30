CXX=clang++
CXX_FLAGS=-std=c++20 -Iincludes -Wall -Wextra -O0 -gdwarf-4

exec: bin/exec

bin/exec: ./src/driver.cc ./includes/functions.hpp ./src/functions.cc 
	$(CXX) $(CXX_FLAGS) ./src/driver.cc ./src/functions.cc  -o $@


.DEFAULT_GOAL := exec
.PHONY: exec

clean:
	rm -rf bin/*
