# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build

# Include any dependencies generated for this target.
include CMakeFiles/tp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tp.dir/flags.make

CMakeFiles/tp.dir/src/Camera.cpp.o: CMakeFiles/tp.dir/flags.make
CMakeFiles/tp.dir/src/Camera.cpp.o: ../src/Camera.cpp
CMakeFiles/tp.dir/src/Camera.cpp.o: CMakeFiles/tp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tp.dir/src/Camera.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp.dir/src/Camera.cpp.o -MF CMakeFiles/tp.dir/src/Camera.cpp.o.d -o CMakeFiles/tp.dir/src/Camera.cpp.o -c /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Camera.cpp

CMakeFiles/tp.dir/src/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp.dir/src/Camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Camera.cpp > CMakeFiles/tp.dir/src/Camera.cpp.i

CMakeFiles/tp.dir/src/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp.dir/src/Camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Camera.cpp -o CMakeFiles/tp.dir/src/Camera.cpp.s

CMakeFiles/tp.dir/src/Context.cpp.o: CMakeFiles/tp.dir/flags.make
CMakeFiles/tp.dir/src/Context.cpp.o: ../src/Context.cpp
CMakeFiles/tp.dir/src/Context.cpp.o: CMakeFiles/tp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tp.dir/src/Context.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp.dir/src/Context.cpp.o -MF CMakeFiles/tp.dir/src/Context.cpp.o.d -o CMakeFiles/tp.dir/src/Context.cpp.o -c /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Context.cpp

CMakeFiles/tp.dir/src/Context.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp.dir/src/Context.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Context.cpp > CMakeFiles/tp.dir/src/Context.cpp.i

CMakeFiles/tp.dir/src/Context.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp.dir/src/Context.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Context.cpp -o CMakeFiles/tp.dir/src/Context.cpp.s

CMakeFiles/tp.dir/src/Keyboard.cpp.o: CMakeFiles/tp.dir/flags.make
CMakeFiles/tp.dir/src/Keyboard.cpp.o: ../src/Keyboard.cpp
CMakeFiles/tp.dir/src/Keyboard.cpp.o: CMakeFiles/tp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tp.dir/src/Keyboard.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp.dir/src/Keyboard.cpp.o -MF CMakeFiles/tp.dir/src/Keyboard.cpp.o.d -o CMakeFiles/tp.dir/src/Keyboard.cpp.o -c /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Keyboard.cpp

CMakeFiles/tp.dir/src/Keyboard.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp.dir/src/Keyboard.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Keyboard.cpp > CMakeFiles/tp.dir/src/Keyboard.cpp.i

CMakeFiles/tp.dir/src/Keyboard.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp.dir/src/Keyboard.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Keyboard.cpp -o CMakeFiles/tp.dir/src/Keyboard.cpp.s

CMakeFiles/tp.dir/src/Material.cpp.o: CMakeFiles/tp.dir/flags.make
CMakeFiles/tp.dir/src/Material.cpp.o: ../src/Material.cpp
CMakeFiles/tp.dir/src/Material.cpp.o: CMakeFiles/tp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tp.dir/src/Material.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp.dir/src/Material.cpp.o -MF CMakeFiles/tp.dir/src/Material.cpp.o.d -o CMakeFiles/tp.dir/src/Material.cpp.o -c /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Material.cpp

CMakeFiles/tp.dir/src/Material.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp.dir/src/Material.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Material.cpp > CMakeFiles/tp.dir/src/Material.cpp.i

CMakeFiles/tp.dir/src/Material.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp.dir/src/Material.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Material.cpp -o CMakeFiles/tp.dir/src/Material.cpp.s

CMakeFiles/tp.dir/src/Mesh.cpp.o: CMakeFiles/tp.dir/flags.make
CMakeFiles/tp.dir/src/Mesh.cpp.o: ../src/Mesh.cpp
CMakeFiles/tp.dir/src/Mesh.cpp.o: CMakeFiles/tp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/tp.dir/src/Mesh.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp.dir/src/Mesh.cpp.o -MF CMakeFiles/tp.dir/src/Mesh.cpp.o.d -o CMakeFiles/tp.dir/src/Mesh.cpp.o -c /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Mesh.cpp

CMakeFiles/tp.dir/src/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp.dir/src/Mesh.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Mesh.cpp > CMakeFiles/tp.dir/src/Mesh.cpp.i

CMakeFiles/tp.dir/src/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp.dir/src/Mesh.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Mesh.cpp -o CMakeFiles/tp.dir/src/Mesh.cpp.s

CMakeFiles/tp.dir/src/Mouse.cpp.o: CMakeFiles/tp.dir/flags.make
CMakeFiles/tp.dir/src/Mouse.cpp.o: ../src/Mouse.cpp
CMakeFiles/tp.dir/src/Mouse.cpp.o: CMakeFiles/tp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/tp.dir/src/Mouse.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp.dir/src/Mouse.cpp.o -MF CMakeFiles/tp.dir/src/Mouse.cpp.o.d -o CMakeFiles/tp.dir/src/Mouse.cpp.o -c /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Mouse.cpp

CMakeFiles/tp.dir/src/Mouse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp.dir/src/Mouse.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Mouse.cpp > CMakeFiles/tp.dir/src/Mouse.cpp.i

CMakeFiles/tp.dir/src/Mouse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp.dir/src/Mouse.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Mouse.cpp -o CMakeFiles/tp.dir/src/Mouse.cpp.s

CMakeFiles/tp.dir/src/SceneLoader.cpp.o: CMakeFiles/tp.dir/flags.make
CMakeFiles/tp.dir/src/SceneLoader.cpp.o: ../src/SceneLoader.cpp
CMakeFiles/tp.dir/src/SceneLoader.cpp.o: CMakeFiles/tp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/tp.dir/src/SceneLoader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp.dir/src/SceneLoader.cpp.o -MF CMakeFiles/tp.dir/src/SceneLoader.cpp.o.d -o CMakeFiles/tp.dir/src/SceneLoader.cpp.o -c /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/SceneLoader.cpp

CMakeFiles/tp.dir/src/SceneLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp.dir/src/SceneLoader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/SceneLoader.cpp > CMakeFiles/tp.dir/src/SceneLoader.cpp.i

CMakeFiles/tp.dir/src/SceneLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp.dir/src/SceneLoader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/SceneLoader.cpp -o CMakeFiles/tp.dir/src/SceneLoader.cpp.s

CMakeFiles/tp.dir/src/Shader.cpp.o: CMakeFiles/tp.dir/flags.make
CMakeFiles/tp.dir/src/Shader.cpp.o: ../src/Shader.cpp
CMakeFiles/tp.dir/src/Shader.cpp.o: CMakeFiles/tp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/tp.dir/src/Shader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp.dir/src/Shader.cpp.o -MF CMakeFiles/tp.dir/src/Shader.cpp.o.d -o CMakeFiles/tp.dir/src/Shader.cpp.o -c /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Shader.cpp

CMakeFiles/tp.dir/src/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp.dir/src/Shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Shader.cpp > CMakeFiles/tp.dir/src/Shader.cpp.i

CMakeFiles/tp.dir/src/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp.dir/src/Shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Shader.cpp -o CMakeFiles/tp.dir/src/Shader.cpp.s

CMakeFiles/tp.dir/src/Texture.cpp.o: CMakeFiles/tp.dir/flags.make
CMakeFiles/tp.dir/src/Texture.cpp.o: ../src/Texture.cpp
CMakeFiles/tp.dir/src/Texture.cpp.o: CMakeFiles/tp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/tp.dir/src/Texture.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp.dir/src/Texture.cpp.o -MF CMakeFiles/tp.dir/src/Texture.cpp.o.d -o CMakeFiles/tp.dir/src/Texture.cpp.o -c /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Texture.cpp

CMakeFiles/tp.dir/src/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp.dir/src/Texture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Texture.cpp > CMakeFiles/tp.dir/src/Texture.cpp.i

CMakeFiles/tp.dir/src/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp.dir/src/Texture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Texture.cpp -o CMakeFiles/tp.dir/src/Texture.cpp.s

CMakeFiles/tp.dir/src/Trackball.cpp.o: CMakeFiles/tp.dir/flags.make
CMakeFiles/tp.dir/src/Trackball.cpp.o: ../src/Trackball.cpp
CMakeFiles/tp.dir/src/Trackball.cpp.o: CMakeFiles/tp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/tp.dir/src/Trackball.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp.dir/src/Trackball.cpp.o -MF CMakeFiles/tp.dir/src/Trackball.cpp.o.d -o CMakeFiles/tp.dir/src/Trackball.cpp.o -c /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Trackball.cpp

CMakeFiles/tp.dir/src/Trackball.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp.dir/src/Trackball.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Trackball.cpp > CMakeFiles/tp.dir/src/Trackball.cpp.i

CMakeFiles/tp.dir/src/Trackball.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp.dir/src/Trackball.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/Trackball.cpp -o CMakeFiles/tp.dir/src/Trackball.cpp.s

CMakeFiles/tp.dir/src/main.cpp.o: CMakeFiles/tp.dir/flags.make
CMakeFiles/tp.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/tp.dir/src/main.cpp.o: CMakeFiles/tp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/tp.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp.dir/src/main.cpp.o -MF CMakeFiles/tp.dir/src/main.cpp.o.d -o CMakeFiles/tp.dir/src/main.cpp.o -c /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/main.cpp

CMakeFiles/tp.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/main.cpp > CMakeFiles/tp.dir/src/main.cpp.i

CMakeFiles/tp.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/main.cpp -o CMakeFiles/tp.dir/src/main.cpp.s

CMakeFiles/tp.dir/src/stb_image.cpp.o: CMakeFiles/tp.dir/flags.make
CMakeFiles/tp.dir/src/stb_image.cpp.o: ../src/stb_image.cpp
CMakeFiles/tp.dir/src/stb_image.cpp.o: CMakeFiles/tp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/tp.dir/src/stb_image.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp.dir/src/stb_image.cpp.o -MF CMakeFiles/tp.dir/src/stb_image.cpp.o.d -o CMakeFiles/tp.dir/src/stb_image.cpp.o -c /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/stb_image.cpp

CMakeFiles/tp.dir/src/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp.dir/src/stb_image.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/stb_image.cpp > CMakeFiles/tp.dir/src/stb_image.cpp.i

CMakeFiles/tp.dir/src/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp.dir/src/stb_image.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/src/stb_image.cpp -o CMakeFiles/tp.dir/src/stb_image.cpp.s

# Object files for target tp
tp_OBJECTS = \
"CMakeFiles/tp.dir/src/Camera.cpp.o" \
"CMakeFiles/tp.dir/src/Context.cpp.o" \
"CMakeFiles/tp.dir/src/Keyboard.cpp.o" \
"CMakeFiles/tp.dir/src/Material.cpp.o" \
"CMakeFiles/tp.dir/src/Mesh.cpp.o" \
"CMakeFiles/tp.dir/src/Mouse.cpp.o" \
"CMakeFiles/tp.dir/src/SceneLoader.cpp.o" \
"CMakeFiles/tp.dir/src/Shader.cpp.o" \
"CMakeFiles/tp.dir/src/Texture.cpp.o" \
"CMakeFiles/tp.dir/src/Trackball.cpp.o" \
"CMakeFiles/tp.dir/src/main.cpp.o" \
"CMakeFiles/tp.dir/src/stb_image.cpp.o"

# External object files for target tp
tp_EXTERNAL_OBJECTS =

tp: CMakeFiles/tp.dir/src/Camera.cpp.o
tp: CMakeFiles/tp.dir/src/Context.cpp.o
tp: CMakeFiles/tp.dir/src/Keyboard.cpp.o
tp: CMakeFiles/tp.dir/src/Material.cpp.o
tp: CMakeFiles/tp.dir/src/Mesh.cpp.o
tp: CMakeFiles/tp.dir/src/Mouse.cpp.o
tp: CMakeFiles/tp.dir/src/SceneLoader.cpp.o
tp: CMakeFiles/tp.dir/src/Shader.cpp.o
tp: CMakeFiles/tp.dir/src/Texture.cpp.o
tp: CMakeFiles/tp.dir/src/Trackball.cpp.o
tp: CMakeFiles/tp.dir/src/main.cpp.o
tp: CMakeFiles/tp.dir/src/stb_image.cpp.o
tp: CMakeFiles/tp.dir/build.make
tp: /usr/lib/x86_64-linux-gnu/libglut.so
tp: /usr/lib/x86_64-linux-gnu/libXi.so
tp: CMakeFiles/tp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable tp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tp.dir/build: tp
.PHONY : CMakeFiles/tp.dir/build

CMakeFiles/tp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tp.dir/clean

CMakeFiles/tp.dir/depend:
	cd /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build /home/mickael/Documents/S7/Prog3D/Tp/Tp4/Git/TP-Texture-PBR/build/CMakeFiles/tp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tp.dir/depend

