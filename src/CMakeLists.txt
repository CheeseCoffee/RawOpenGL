cmake_minimum_required(VERSION 3.10)

# set the project name and version
project(Tutorial VERSION 1.0)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_definitions(-w)

add_subdirectory(dependencies/stb_image)

add_executable(Myapp application.cpp Renderer.cpp IndexBuffer.cpp VertexBuffer.cpp Shader.cpp)


target_link_libraries(Myapp 
 PUBLIC
 STBLIB
 ${PROJECT_SOURCE_DIR}/dependencies/GLFW/lib/libglfw3.a
 PRIVATE
 "-framework Cocoa"
 "-framework OpenGL"
 "-framework IOKit"
)

target_include_directories(Myapp 
 PUBLIC
 "${PROJECT_SOURCE_DIR}"
 "${PROJECT_SOURCE_DIR}/dependencies/GLFW/include"
 "${PROJECT_SOURCE_DIR}/dependencies/glm"
 "${PROJECT_SOURCE_DIR}/dependencies/stb_image"
)