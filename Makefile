ifndef OUT
OUT := $(shell realpath _out)
SRC := $(shell realpath src)
export OUT SRC
endif

ifeq (,$(filter _%,$(notdir $(CURDIR))))
include target.mk
else
#----- End Boilerplate

VPATH = $(SRCDIR)

CC=c99
CFLAGS=-g3 -Wall

PROGRAMS := hello

all: $(PROGRAMS)

hello: hello.o

hello.o: hello.c

.PHONY: all clean

#----- Begin Boilerplate
endif
