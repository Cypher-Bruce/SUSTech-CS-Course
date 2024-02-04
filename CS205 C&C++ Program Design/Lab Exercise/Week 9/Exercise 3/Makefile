CXX = g++
CXXFLAGS = -c -Wall 
LIB = -lfunc -L./lib

src = $(wildcard *.cpp)
obj = $(patsubst %.cpp, %.o, $(src))
target = funcTest

$(target): $(obj)
	$(CXX) $^ $(LIB) -o $@ 

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

.PHONY: clean
clean:
	rm -f *.o $(target)