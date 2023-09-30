#pragma once
#include <GLFW/glfw3.h>
#include <OpenGL/gl3.h>

#define ASSERT(x) if (!(x)) __asm__("int $3");
#define GLCall(x) GLClearError();\
    x;\
    ASSERT(GLLogCall(#x, __FILE__, __LINE__))

void GLClearError();
bool GLLogCall(const char* function, const char* file, int line);