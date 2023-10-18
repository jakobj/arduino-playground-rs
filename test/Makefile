all:
	g++ -c testli.cpp -o testli.o
	ar rcs libtestli.a testli.o
	g++ -static test.cpp -L. -ltestli -Ltestlirs/target/release -ltestlirs -o test
