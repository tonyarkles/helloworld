SRCS = helloworld.c

TARGET = helloworld

########################################

OBJS = $(SRCS:.c=.o)

vpath %.c src

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $^

clean:
	rm -f $(OBJS) $(TARGET)
