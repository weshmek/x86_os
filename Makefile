all : kernel-2015
XCC = gcc
AS = as
CFLAGS = -S -c -I include -fPIC -O0 -Werror
EXECNAME = kernel-2015
MAPNAME = kernel.map

kernel-2015 : build/kernel.o build/start.o
	ld -m elf_i386 -T link.ld --Map=${MAPNAME} -N -o ${EXECNAME} build/start.o build/kernel.o 

clean :
	rm asm/* build/* ${MAPNAME} ${EXECNAME}


build/kernel.o : asm/kernel.s
	${AS} -o build/kernel.o asm/kernel.s

build/start.o : arch/start.s
	${AS} -o build/start.o arch/start.s


asm/kernel.s : src/kernel.c
	${XCC} ${CFLAGS} -o $@ src/kernel.c



