# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.27.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.27.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/akbar/CppProjects/RawOpenGL/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/akbar/CppProjects/RawOpenGL/build

# Include any dependencies generated for this target.
include CMakeFiles/Myapp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Myapp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Myapp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Myapp.dir/flags.make

CMakeFiles/Myapp.dir/application.cpp.o: CMakeFiles/Myapp.dir/flags.make
CMakeFiles/Myapp.dir/application.cpp.o: /Users/akbar/CppProjects/RawOpenGL/src/application.cpp
CMakeFiles/Myapp.dir/application.cpp.o: CMakeFiles/Myapp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/akbar/CppProjects/RawOpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Myapp.dir/application.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Myapp.dir/application.cpp.o -MF CMakeFiles/Myapp.dir/application.cpp.o.d -o CMakeFiles/Myapp.dir/application.cpp.o -c /Users/akbar/CppProjects/RawOpenGL/src/application.cpp

CMakeFiles/Myapp.dir/application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Myapp.dir/application.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akbar/CppProjects/RawOpenGL/src/application.cpp > CMakeFiles/Myapp.dir/application.cpp.i

CMakeFiles/Myapp.dir/application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Myapp.dir/application.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akbar/CppProjects/RawOpenGL/src/application.cpp -o CMakeFiles/Myapp.dir/application.cpp.s

CMakeFiles/Myapp.dir/Renderer.cpp.o: CMakeFiles/Myapp.dir/flags.make
CMakeFiles/Myapp.dir/Renderer.cpp.o: /Users/akbar/CppProjects/RawOpenGL/src/Renderer.cpp
CMakeFiles/Myapp.dir/Renderer.cpp.o: CMakeFiles/Myapp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/akbar/CppProjects/RawOpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Myapp.dir/Renderer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Myapp.dir/Renderer.cpp.o -MF CMakeFiles/Myapp.dir/Renderer.cpp.o.d -o CMakeFiles/Myapp.dir/Renderer.cpp.o -c /Users/akbar/CppProjects/RawOpenGL/src/Renderer.cpp

CMakeFiles/Myapp.dir/Renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Myapp.dir/Renderer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akbar/CppProjects/RawOpenGL/src/Renderer.cpp > CMakeFiles/Myapp.dir/Renderer.cpp.i

CMakeFiles/Myapp.dir/Renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Myapp.dir/Renderer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akbar/CppProjects/RawOpenGL/src/Renderer.cpp -o CMakeFiles/Myapp.dir/Renderer.cpp.s

CMakeFiles/Myapp.dir/IndexBuffer.cpp.o: CMakeFiles/Myapp.dir/flags.make
CMakeFiles/Myapp.dir/IndexBuffer.cpp.o: /Users/akbar/CppProjects/RawOpenGL/src/IndexBuffer.cpp
CMakeFiles/Myapp.dir/IndexBuffer.cpp.o: CMakeFiles/Myapp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/akbar/CppProjects/RawOpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Myapp.dir/IndexBuffer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Myapp.dir/IndexBuffer.cpp.o -MF CMakeFiles/Myapp.dir/IndexBuffer.cpp.o.d -o CMakeFiles/Myapp.dir/IndexBuffer.cpp.o -c /Users/akbar/CppProjects/RawOpenGL/src/IndexBuffer.cpp

CMakeFiles/Myapp.dir/IndexBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Myapp.dir/IndexBuffer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akbar/CppProjects/RawOpenGL/src/IndexBuffer.cpp > CMakeFiles/Myapp.dir/IndexBuffer.cpp.i

CMakeFiles/Myapp.dir/IndexBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Myapp.dir/IndexBuffer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akbar/CppProjects/RawOpenGL/src/IndexBuffer.cpp -o CMakeFiles/Myapp.dir/IndexBuffer.cpp.s

CMakeFiles/Myapp.dir/VertexBuffer.cpp.o: CMakeFiles/Myapp.dir/flags.make
CMakeFiles/Myapp.dir/VertexBuffer.cpp.o: /Users/akbar/CppProjects/RawOpenGL/src/VertexBuffer.cpp
CMakeFiles/Myapp.dir/VertexBuffer.cpp.o: CMakeFiles/Myapp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/akbar/CppProjects/RawOpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Myapp.dir/VertexBuffer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Myapp.dir/VertexBuffer.cpp.o -MF CMakeFiles/Myapp.dir/VertexBuffer.cpp.o.d -o CMakeFiles/Myapp.dir/VertexBuffer.cpp.o -c /Users/akbar/CppProjects/RawOpenGL/src/VertexBuffer.cpp

CMakeFiles/Myapp.dir/VertexBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Myapp.dir/VertexBuffer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akbar/CppProjects/RawOpenGL/src/VertexBuffer.cpp > CMakeFiles/Myapp.dir/VertexBuffer.cpp.i

CMakeFiles/Myapp.dir/VertexBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Myapp.dir/VertexBuffer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akbar/CppProjects/RawOpenGL/src/VertexBuffer.cpp -o CMakeFiles/Myapp.dir/VertexBuffer.cpp.s

CMakeFiles/Myapp.dir/Shader.cpp.o: CMakeFiles/Myapp.dir/flags.make
CMakeFiles/Myapp.dir/Shader.cpp.o: /Users/akbar/CppProjects/RawOpenGL/src/Shader.cpp
CMakeFiles/Myapp.dir/Shader.cpp.o: CMakeFiles/Myapp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/akbar/CppProjects/RawOpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Myapp.dir/Shader.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Myapp.dir/Shader.cpp.o -MF CMakeFiles/Myapp.dir/Shader.cpp.o.d -o CMakeFiles/Myapp.dir/Shader.cpp.o -c /Users/akbar/CppProjects/RawOpenGL/src/Shader.cpp

CMakeFiles/Myapp.dir/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Myapp.dir/Shader.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akbar/CppProjects/RawOpenGL/src/Shader.cpp > CMakeFiles/Myapp.dir/Shader.cpp.i

CMakeFiles/Myapp.dir/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Myapp.dir/Shader.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akbar/CppProjects/RawOpenGL/src/Shader.cpp -o CMakeFiles/Myapp.dir/Shader.cpp.s

# Object files for target Myapp
Myapp_OBJECTS = \
"CMakeFiles/Myapp.dir/application.cpp.o" \
"CMakeFiles/Myapp.dir/Renderer.cpp.o" \
"CMakeFiles/Myapp.dir/IndexBuffer.cpp.o" \
"CMakeFiles/Myapp.dir/VertexBuffer.cpp.o" \
"CMakeFiles/Myapp.dir/Shader.cpp.o"

# External object files for target Myapp
Myapp_EXTERNAL_OBJECTS =

Myapp: CMakeFiles/Myapp.dir/application.cpp.o
Myapp: CMakeFiles/Myapp.dir/Renderer.cpp.o
Myapp: CMakeFiles/Myapp.dir/IndexBuffer.cpp.o
Myapp: CMakeFiles/Myapp.dir/VertexBuffer.cpp.o
Myapp: CMakeFiles/Myapp.dir/Shader.cpp.o
Myapp: CMakeFiles/Myapp.dir/build.make
Myapp: dependencies/stb_image/libSTBLIB.a
Myapp: /Users/akbar/CppProjects/RawOpenGL/src/dependencies/GLFW/lib/libglfw3.a
Myapp: CMakeFiles/Myapp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/akbar/CppProjects/RawOpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Myapp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Myapp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Myapp.dir/build: Myapp
.PHONY : CMakeFiles/Myapp.dir/build

CMakeFiles/Myapp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Myapp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Myapp.dir/clean

CMakeFiles/Myapp.dir/depend:
	cd /Users/akbar/CppProjects/RawOpenGL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/akbar/CppProjects/RawOpenGL/src /Users/akbar/CppProjects/RawOpenGL/src /Users/akbar/CppProjects/RawOpenGL/build /Users/akbar/CppProjects/RawOpenGL/build /Users/akbar/CppProjects/RawOpenGL/build/CMakeFiles/Myapp.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Myapp.dir/depend

