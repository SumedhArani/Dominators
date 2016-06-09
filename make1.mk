rir.out: a.out
	mv a.out rir.out
	rm *.o
	./rir.out > input.txt
	python3 dominator.py
	dot -Tps -O out.dot
	evince out.dot.ps
a.out : maingenir.o genir.o
	gcc -std=c11 maingenir.o genir.o 
maingenir.o : maingenir.c genir.h
	gcc -c -std=c11 maingenir.c
genir.o : genir.c genir.h
	gcc -c -std=c11 genir.c	