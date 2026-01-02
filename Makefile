
CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -pthread


TARGET = crawler


SRCS = main.cpp thread.cpp


OBJS = $(SRCS:.cpp=.o)


all: $(TARGET)


$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)


%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@


clean:
	rm -f $(OBJS) $(TARGET)


rebuild: clean all

.PHONY: all clean rebuild
