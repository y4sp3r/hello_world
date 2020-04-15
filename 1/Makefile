all: compile-d compile-s assemble time

compile-d:
	gcc -O3 main.c -o main_c_d

compile-s:
	gcc -static -O3 main.c -o main_c_s

assemble:
	gcc -c main.s
	ld main.o -o main_asm

time:
	@./time.sh

clean:
	rm -Rf *~ *.o *_d *_s *_asm
