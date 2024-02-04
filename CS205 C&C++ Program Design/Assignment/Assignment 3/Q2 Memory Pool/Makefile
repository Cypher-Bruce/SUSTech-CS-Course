CXX = gcc
CFLAGS = -std=c11

BUILD_DIR = build
SRC_DIR = src

TARGET = main
SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRC))

$(BUILD_DIR)/$(TARGET): $(OBJ)
	$(CXX) $(CFLAGS) -o $(TARGET) $(OBJ) -o $@

$(BUILD_DIR)/mmpool.o: $(SRC_DIR)/mmpool.c
	$(CXX) $(CFLAGS) -c $(SRC_DIR)/mmpool.c -o $@

$(BUILD_DIR)/main.o: $(SRC_DIR)/main.c
	$(CXX) $(CFLAGS) -c $(SRC_DIR)/main.c -o $@

.PHONY: clean 
clean:
	rm -f $(BUILD_DIR)/*.o $(BUILD_DIR)/$(TARGET)