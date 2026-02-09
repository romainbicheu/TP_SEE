

all: hello.c x86-hello arm-hello

x86-hello: hello.c
	gcc -o $@ $^
	gcc -S -o $@.ass $<

arm-hello: hello.c
	arm-none-linux-gnueabihf-gcc -o $@ $^
	arm-none-linux-gnueabihf-gcc -S -o $@.ass $<

clean:
	rm -f x86-hello arm-hello *.o *.ass
