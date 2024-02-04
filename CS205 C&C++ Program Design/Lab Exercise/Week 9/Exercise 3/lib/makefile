CXX = g++
CXXFLAGS = -c -Wall

target = libfunc.so
src = $(wildcard *.cpp)
obj = $(patsubst %.cpp, %.o, $(src))

$(target): $(obj)
	$(CXX) -shared -fPIC $^ -o $@ 
	sudo cp $(target) /usr/lib/

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

.PHONY: clean
clean:
	rm -rf $(target) $(obj)
