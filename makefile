CC=gcc
CFLAGS=-Wall -Wextra -std=c11 -Iinclude -Isrc

SRC = src/history.c src/lexer.c src/token.c src/parser.c src/expand.c src/main-parser-expand.c

TARGET=shellforge

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -lreadline -o $(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: clean
