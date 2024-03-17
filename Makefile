CFLAGS = -std=c++17 -O2 -g
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: main.cpp
	clang++ $(CFLAGS) -o build/VulkanTest main.cpp $(LDFLAGS)

GLFWTest: glfw_test.cpp
	clang++ $(CFLAGS) -o build/GLFWTest glfw_test.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./build/VulkanTest

clean:
	rm -f build/*
