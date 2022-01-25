# Notices--------------------------------------------------
# This Seprated Multiple CXX Manully VScode(mac) Do Not USE Makefile.
# This Seprated Multiple CXX Manully VScode(mac) Do Not USE Makefile.
# This Seprated Multiple CXX Manully VScode(mac) Do Not USE Makefile.
# ---------------------------------------------------------
# Thanks, Job Vranish.
# (https://spin.atomicobject.com/2016/08/26/makefile-c-projects/)
# Reference: Makefile Tutorial
# (https://makefiletutorial.com/)
# Reference: @yagiyuki from Qiita
# (https://qiita.com/yagiyuki/items/ff343d381d9477e89f3b)
# Reference: simonsso from Github
# (https://github.com/simonsso/empty-cpp-project/blob/master/Makefile)
# (1)Compiler
CXX = clang++
# (2)Compile options
CXX_FLAGS = -Wall -Wextra -std=c++11 -g
# (3)Build task directory path
BUILD_DIR := .
# (4)Source files directory path
SRC_DIRS := .

# (5)Library files directory path
LIBDIR := 
# (6)Add library files
LIBS :=
# (7)Target file, excutable file.
#TARGET := main fitbodyapp
TARGET :=fitbodyapp
# (8)Source files(code), to be compiled
# Find source files we want to compile 
# *expression must around by single quotos
# SRCS = $(wildcard ./src/*.cpp)
SRCS := $(shell find $(SRC_DIRS) -name '*.cpp' -or -name '*.c' -or -name '*.s')
# (9)Object files
# String substituion for every C/C++ file
# e.g: ./src/bank.cpp urns into ./build/bank.cpp.o
# OBJS = $(patsubst %cpp,%.o,$(SRCS))
OBJS := $(SRCS:%=$(BUILD_DIR)/%.o)
# (10)Dependency files
DEPS := $(OBJS:.o=.d)
# (11)Include files directory path
# Every folder in ./src find include files to be passed via clang 
# INCDIR = -I./inc
# INC_DIR = ./inc
INC_DIRS := $(shell find $(SRC_DIRS) -type d)
# (12)Include files add together a prefix, clang make sense that -I flag
# INCS = -I$(INC_DIR)
INC_FLAGS := $(addprefix -I,$(INC_DIRS))
# (13)Make Makefiles output Dependency files
# That -MMD and -MP flags together to generate Makefiles 
# That generated Makefiles will take .o as .d to the output
CPP_FLAGS := $(INC_FLAGS) -MMD -MP
# Link: Generate executable file from object file
$(BUILD_DIR)/$(TARGET):$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) 
# Compile: Generate object files from source files
$(BUILD_DIR)/%.cpp.o: $(SRC_DIRS)/%.cpp
	mkdir -p $(dir $@)
	$(CXX) $(CPP_FLAGS) $(CXX_FLAGS) -c $< -o $@
.PHONY: clean 
clean:
  # rm -r $(BUILD_DIR)
	rm -r $(OBJS) $(TARGET) *.d
-include $(DEPS)
