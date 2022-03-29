SRC_DIRS_SRC += ./petActive/source
# SRC_DIRS += ./petActive/source
#.PHONY: all_a
#all_a:
#	echo $(SRC_DIRS)
# SRCS := $(shell find $(SRC_DIRS) -name '*.cpp' -or -name '*.c' -or -name '*.s')
#echo $(SRC_DIRS)
#OBJS := $(patsubst %.cpp, ${BUILD_DIR}/%.cpp.o, $(notdir $(SRCS)))
#echo $(SRC_DIRS)
#DEPS := $(OBJS:.o=.d)
#echo $(SRC_DIRS)
INC_DIRS += ./petActive/include
#.PHONY: all_b
#all_b:
#	echo $(INC_DIRS)
#INC_FLAGS := $(addprefix -I,$(INC_DIRS))
#echo $(SRC_DIRS)
