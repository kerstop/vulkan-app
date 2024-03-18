CFLAGS = -std=c++17 -O2 -g
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

build/VulkanTest: main.cpp
	clang++ $(CFLAGS) -o build/VulkanTest main.cpp $(LDFLAGS)

build/GLFWTest: glfw_test.cpp
	clang++ $(CFLAGS) -o build/GLFWTest glfw_test.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./compile_shaders.sh
	./build/VulkanTest

clean:
	rm -f build/*
