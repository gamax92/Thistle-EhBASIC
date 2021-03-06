all: basic.bin

basic.bin: basic.o
	ld65 -o basic.bin -t none -vm -m basic.map basic.o

basic.o: basic.asm min_mon.asm
	ca65 -g -l min_mon.lst -o basic.o min_mon.asm

clean:
	$(RM) *.o *.lst *.map *.bin

distclean: clean
