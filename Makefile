CC = gcc
CFLAGS = -Wall -Wextra -O2
SRCS = $(SRC_DIR)/payload.c $(SRC_DIR)/aes.c
SRC_DIR = src
DEST_DIR = bin

TARGET = $(DEST_DIR)/payload.exe

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $(TARGET)

run:
	./$(TARGET)
clean:
	rm -f $(TARGET)
