CC=clang
LDFLAGS = $(shell pkg-config --libs sdl2)
CFLAGS = -std=c99 $(shell pkg-config --cflags sdl2)
SRC=./src/*.c
TARGET=renderer

build:
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS)

clean:
	rm renderer
