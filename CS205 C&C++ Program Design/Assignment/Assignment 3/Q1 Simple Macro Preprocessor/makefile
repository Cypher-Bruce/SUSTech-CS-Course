CXX = g++
TARGET = main
OBJ = main.o
SRC = main.cpp

$(TARGET): $(OBJ)
	$(CXX) -o $(TARGET) $(OBJ)

$(OBJ): $(SRC)
	$(CXX) -c $(SRC)

PHONY: clean
clean:
	rm -f $(TARGET) $(OBJ)