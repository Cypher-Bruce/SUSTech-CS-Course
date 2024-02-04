target = funcTest
CXX = g++
CXXFLAGS = -c -Wall

src = $(wildcard *.cpp)
obj = $(patsubst %.cpp, %.o, $(src))

$(target): $(obj)
	$(CXX) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -rf *.o $(target) 