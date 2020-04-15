all: compile disas rodata

compile:
	gcc main.c     -o main_0
	gcc main.c -O1 -o main_1
	gcc main.c -O2 -o main_2
	gcc main.c -O3 -o main_3
	gcc main.c -Os -o main_s

disas:
	objdump -D main_0 >> main_0.asm
	objdump -D main_1 >> main_1.asm
	objdump -D main_2 >> main_2.asm
	objdump -D main_3 >> main_3.asm
	objdump -D main_s >> main_s.asm

rodata:
	objdump -s -j .rodata main_0 >> main_0.rodata
	objdump -s -j .rodata main_1 >> main_1.rodata
	objdump -s -j .rodata main_2 >> main_2.rodata
	objdump -s -j .rodata main_3 >> main_3.rodata
	objdump -s -j .rodata main_s >> main_s.rodata

clean:
	rm -Rf *~ *.asm *.rodata main_0 main_1 main_2 main_3 main_s
