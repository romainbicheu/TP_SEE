

all: hello.c x86-hello arm-hello

x86-hello: hello.c
	gcc -o $@ $^

arm-hello: hello.c
	arm-none-linux-gnueabihf-gcc -o $@ $^

hello.o:
	gcc $< -o $@
clean:
	rm -f x86-hello arm-hello *.o *.ass
