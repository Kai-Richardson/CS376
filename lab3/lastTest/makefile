COMPILE = gcc $(COMPILE_SWITCHES)

all: listForward listBackward

listBackward: listBackward.o arrayObj.o
	$(COMPILE) -o listBackward listBackward.o arrayObj.o

listForward: listForward.o arrayObj.o
	$(COMPILE) -o listForward listForward.o arrayObj.o


arrayObj.o: arrayObj.c arrayObj.h constants.h
	$(COMPILE) -c arrayObj.c

listBackward.o: listBackward.c listBackward.h arrayObj.h
	$(COMPILE) -c listBackward.c

listForward.o: listForward.c listForward.h arrayObj.h
	$(COMPILE) -c listForward.c



clean:
	/bin/rm -f *.o listBackward
	/bin/rm -f *.o listForward