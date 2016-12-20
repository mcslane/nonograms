OBJS = line.o main.o
CC = g++
DEBUG = -g
CFLAGS = -Wall -std=c++11 -c $(DEBUG)
LFLAGS = -Wall -std=c++11 $(DEBUG)

solver: $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o solver

line.o: line.h line.cpp
	$(CC) $(CFLAGS) line.cpp

main.o: main.cpp line.h
	$(CC) $(CFLAGS) main.cpp

clean:
	\rm *.o *~ solver