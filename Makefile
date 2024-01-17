all:
	gcc -o clocks clocks.c -lrt
	./clocks
	g++ -O3 -ggdb  -lrt  -DRDTSCP=1  -o ClockBench ClockBench.cpp
	taskset -c 1 ./ClockBench

clean:
	rm -rf ClockBench clocks

