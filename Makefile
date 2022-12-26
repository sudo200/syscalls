ASFLAGS = -g

all: out/syscalls.a out/include

out/include: include out
	cp -r ./include ./out/

out/syscalls.a: out $(patsubst src/%.s,obj/%.o,$(wildcard src/*.s))
	$(AR) -cr out/syscalls.a $(wildcard obj/*.o)

obj/%.o: src/%.s obj
	$(AS) $(ASFLAGS) -o $@ $<

obj:
	mkdir obj

out:
	mkdir out

clean:
	$(RM) -r obj out

.PHONY: all clean

