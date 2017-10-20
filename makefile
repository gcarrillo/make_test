PROG = test 

CC = gcc
CFLAGS = -ggdb3 -O0
LDFLAGS =

SRCS_C = test.c
SRCS_C += hello.c

OBJS = $(SRCS_C:.c=.o)

$(PROG): $(OBJS)

$(OBJS): hello.h

.PHONY: clean
clean:
	rm *.o $(PROG)
