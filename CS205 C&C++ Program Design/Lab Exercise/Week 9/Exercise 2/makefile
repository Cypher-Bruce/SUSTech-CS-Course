CXX = g++
CXXFLAGS = -c -Wall
LIB = -lfunc -L. 

src = $(wildcard *.cpp)
obj = $(patsubst %.cpp, %.o, $(src))
target = funcTest
lib = libfunc.a

$(target): $(obj) $(lib)
	$(CXX) $^ -o $@ $(LIB)

$(lib): $(obj)
	ar -r $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -rf $(target) $(obj) $(lib)