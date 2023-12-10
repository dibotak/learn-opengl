CC = g++

CFLAGS = -lGL -lglfw -lX11 -lpthread -lXrandr -lXi -ldl -Iinclude

TARGET = start

all: $(TARGET)

$(TARGET): src/$(TARGET).cpp
				$(CC) src/$(TARGET).cpp src/glad.c -o $(TARGET) $(CFLAGS)

clean:
				$(RM) $(TARGET)
