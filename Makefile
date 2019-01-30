CC=gcc
CFLAGS=-g -I. -O2
ASFLAGS=-g

EXE=test

OBJS=test.o sse.o sse-clear.o sse-clear2.o avx.o avx2.o avx-clear.o \
     avx-clear2.o

all: $(EXE)
	./$(EXE)

$(EXE): $(OBJS)
	$(CC) -o $@ $^

clean:
	rm -f $(OBJS) $(EXE)
