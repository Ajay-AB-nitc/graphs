# Compiler
CC = gcc

# Output executable name
TARGET = opengl_test

# Source files
SRC = test.c

# Compiler flags
CFLAGS = -Wall -Wextra

# Libraries to link against
LIBS = -lGL -lglfw -lGLEW

# Build rule
all: $(TARGET)

# Link the program
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET) $(LIBS)

# Clean rule
clean:
	rm -f $(TARGET)

