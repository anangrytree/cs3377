EXEC := myprog1
CC := g++
CFLAGS := -O3
LDFLAGS := -L/usr/lib
LDLIBS := -lm
$(EXEC): myprog1.o
	@$(CC) $(LDFLAGS) $(LDLIBS) -o $@ $<
	@rm $<
myprog1.o: myprog1.cpp
	@$(CC) $(CXXFLAGS) -c $<
