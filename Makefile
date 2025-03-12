OS.BIN: *.asm
	nasm -f bin -o OS.BIN os.asm

.PHONY: launch
launch: OS.BIN
	qemu-system-i386 -drive file=OS.BIN,index=0,if=floppy,format=raw -audiodev pa,id=snd0 -machine pcspk-audiodev=snd0

.PHONY: clean
clean:
	rm -f OS.BIN
