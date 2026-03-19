CC = gcc
CFLAGS = -std=c99 -Wall -Wextra

SRC = src/main.c
OBJ_DIR = obj
OBJ = $(OBJ_DIR)/main.o
TARGET = minicpu

all: $(OBJ_DIR) $(TARGET)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -rf $(OBJ_DIR) $(TARGET)