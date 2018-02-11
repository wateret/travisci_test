hello: hello.o
	clang++ hello.o -o hello

hello.o: hello.cc
	clang++ hello.cc -c -o hello.o

test: hello
	./hello

clean: hello
	rm hello hello.o
