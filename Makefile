CXXFLAGS = -Wall -O2 -luring
CXX = g++

all: sync-io.out uring-io.out

%.out: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^

clean:
	rm -rf *.out
	rm -rf *.txt
