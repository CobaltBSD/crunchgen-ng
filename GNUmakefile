all: crunched_skel.c
	$(CC) -g -Wall crunchgen.c crunched_skel.c crunchide.c elf_hide.c mangle.c -o crunchgen -Wno-format-truncation -lbsd

crunched_skel.c: crunched_main.c
	./mkskel.sh crunched_main.c > crunched_skel.c

clean:
	rm -fv crunched_skel.c crunchgen
