# This is a Makefile fot separated multiple sources to build with VSCode on mac
# Thanks, Job Vranish.
# (https://spin.atomicobject.com/2016/08/26/makefile-c-projects/)
# Reference: Makefile Tutorial
# (https://makefiletutorial.com/)
# Reference: @yagiyuki from Qiita
# (https://qiita.com/yagiyuki/items/ff343d381d9477e89f3b)
# Reference: simonsso from Github
# (https://github.com/simonsso/empty-cpp-project/blob/master/Makefile)
# Reference: Chinese Website blogger CDNS
# (https://blog.csdn.net/qq_22073849/article/details/88893201)
# (1)Compiler
# clang++
CXX = clang++
# CXX = g++
# (2)Compile options
# -Wall -Wextra -std=c++11 -g
CXX_FLAGS = -Wall -Wextra -std=c++11 -g
# (3)Build task directory path
# I do care about out-of-source builds
# ./build
BUILD_DIR ?= ./build
# (4)Source files directory path
# ./src
SRC_DIRS ?= .
SRC_DIRS_SRC ?= ./src
# (5)Library files directory path
LIBDIR :=
# (6)Add library files
LIBS :=

# (7)Target file, excutable file.
#TARGET := main
#TARGET := ${BUILD_DIR}/main
# main
TARGET ?= main
# BUILD_TARGET = ${BUILD_DIR}/${TARGET}
# (8)Source files(code), to be compiled
# Find source files we want to compile 
# *expression must around by single quotos
# SRCS = $(wildcard ./src/*.cpp)
# ./src/bank.cpp ./src/main.cpp
SRCS := $(shell find $(SRC_DIRS) -name '*.cpp' -or -name '*.c' -or -name '*.s')
SRCS_SRC := $(shell find $(SRC_DIRS_SRC) -name '*.cpp' -or -name '*.c' -or -name '*.s')
# (9)Object files
# String substituion for every C/C++ file
# e.g: ./src/bank.cpp turns into ./build/bank.cpp.o
#
# ./src/bank..o ./src/main..o
# OBJS = $(patsubst %cpp,%.o,$(SRCS))
# Just prepend a $(BUILD_DIR)/ and append a .o to every source file path:
# ./build/../src/bank.cpp.o
# OBJS := $(SRCS:%=$(BUILD_DIR)/.%.o)
# ./src/bank.cpp.o ./src/main.cpp.o
# OBJS := $(subst $(SRCS),$(BUILD_DIR),$(SRCS:.cpp=.cpp.o))
# ./build/bank.cpp.o ./build/main.cpp.o
# OBJS := $(SRCS:$(SRC_DIRS)/%.cpp=$(BUILD_DIR)/%.cpp.o)
# ./build/bank.o ./build/main.o
# OBJS := $(SRCS:$(SRC_DIRS)/%.cpp=$(BUILD_DIR)/%.o)
# ./build/bank.cpp.o  ./build/main.cpp.o
OBJS := $(patsubst %.cpp, ${BUILD_DIR}/%.cpp.o, $(notdir $(SRCS)))
OBJS_SRC := $(patsubst %.cpp, ${BUILD_DIR}/%.cpp.o, $(notdir $(SRCS_SRC)))
# make: *** build: Is a directory.  Stop.
# OBJS := $(patsubst %.cpp, ${BUILD_DIR}/%.cpp.o, $(notdir $(BUILD_DIR)))
# (10)Dependency files
# which will generate a .d file next to the .o file. Then to use the .d files,
# you just need to find them all:
# 
DEPS := $(OBJS:.o=.d)
DEPS_SRC := $(OBJS_SRC:.o=.d)
# (11)Include files directory path
# Every folder in ./src find include files to be passed via clang 
# INCDIR = -I./inc
# INC_DIR = ./inc
# ./inc
INC_DIRS := ./inc
# If use below this , include files  should be at the same directory 
# with sources files.
# INC_DIRS := $(shell find $(SRC_DIRS) -type d)
# (12)Include files add together a prefix, clang make sense that -I flag
# INCS = -I$(INC_DIR)
INC_FLAGS := $(addprefix -I,$(INC_DIRS))
# LIBS_FLAGS := $(addprefix -L,$(LIBS)) 
# (13)Make Makefiles output Dependency files
# That -MMD and -MP flags together to generate Makefiles 
# That generated Makefiles will take .o as .d to the output
# That "-MMD" and "-MP" To generate the dependency files, all you have to do is
# add some flags to the compile command (supported by both Clang and GCC):
CPP_FLAGS ?= $(INC_FLAGS) -MMD -MP

# Link: Generate executable file from object file
# make your target depend on the objects files:
${BUILD_DIR}/${TARGET} : $(OBJS)
#${BUILD_DIR}/${TARGET} : $(OBJS) $(OBJS_SRC)	
	$(CXX) $^ -o $@
#    $(CXX) $^ -o $@ $(LIBS_FLAGS)
#	$(CXX) $(OBJS) $(OBJS_SRC)	 -o ${TARGET}
# Compile: Generate object files from source files
# $@ := {TARGET}
# $< := THE first file
# $^ all the dependency
# C++ Sources
#
# BREAK NEWS!!!
# If all the sources files including the main function are separated directory,
# Then you need to generate the object files via one by one directory
# 
# clang++ -I./inc -MMD -MP -Wall -Wextra -std=c++11 -g -c main.cpp src/bank.cpp -o build/main.cpp.o
# clang: error: cannot specify -o when generating multiple output files
# make: *** [build/main.cpp.o] Error 1
#$(OBJS) : $(SRCS)
$(BUILD_DIR)/%.cpp.o : $(SRC_DIRS)/%.cpp 
	$(MKDIR_P) $(dir $@)
	$(CXX) $(CPP_FLAGS) $(CXX_FLAGS) -c $^ -o $@
$(BUILD_DIR)/%.cpp.o : $(SRC_DIRS_SRC)/%.cpp 
	$(CXX) $(CPP_FLAGS) $(CXX_FLAGS) -c $^ -o $@
# C Language Sources
# # CC := clang
# # C_FLAGS = -Wall -Wextra -std=c11 -g
# $(BUILD_DIR)/%.c.o: $(SRC_DIRS)/%.c
# $(MKDIR_P) $(dir $@)
# $(CC) $(CPPFLAGS) $(C_FLAGS) -c $< -o $@
# Assembly Langusge Sources
# # AS := NASM/
# # ASFLAGS := # I DO NOT KNOW
# $(BUILD_DIR)/%.s.o: $(SRC_DIRS)/%.s
# $(MKDIR_P) $(dir $@)
# $(AS) $(ASFLAGS) -c $< -o $@
.PHONY:  clean 
clean:
# rm  ./build/./build/bank.cpp.d ./build/main.cpp.d ./build/ ./build/bank.cpp.o  ./build/main.cpp.o ./build/main
# rm: ./build/./build/bank.cpp.d: No such file or directory
# rm: ./build/: is a directory
# make: *** [clean] Error 1
#rm  ${BUILD_DIR}/$(DEPS) ${BUILD_DIR}/$(OBJS) ${BUILD_DIR}/${TARGET}
# ld: can't open output file for writing: /Users/yq/VSCode/CppProject/fitBodyFarm/build/main, errno=2 for architecture x86_64
# clang: error: linker command failed with exit code 1 (use -v to see invocation)
#	$(RM) -r $(BUILD_DIR)
	$(RM) $(DEPS) $(OBJS) ${BUILD_DIR}/${TARGET} 
	
-include $(DEPS) 

MKDIR_P ?= mkdir -p


# Just use ".PHONY: all" to debug my Makefile.
# Just use "all:" to debug my Makefile.
# Just use "echo $(variable)" to debug my Makefile.
# eg:
# .PHONY: all
# all:
#	echo $(CXX)
#	echo $(CXX_FLAGS)
#	echo $(BUILD_DIR)
#	echo $(SRC_DIRS)
#	echo $(LIBDIR)
#	echo $(LIBS)
#	echo $(TARGET)
#	echo $(SRCS)
#	echo $(OBJS)
#	echo $(DEPS)
#	echo $(INC_DIRS)
#	echo $(INC_FLAGS)
#	echo $(CPP_FLAGS)
