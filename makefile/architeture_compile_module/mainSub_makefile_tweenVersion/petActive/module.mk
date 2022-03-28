SRC_DIRS += ./petActive/source

SRCS := $(shell find $(SRC_DIRS) -name '*.cpp' -or -name '*.c' -or -name '*.s')

OBJS := $(patsubst %.cpp, ${BUILD_DIR}/%.cpp.o, $(notdir $(SRCS)))

DEPS := $(OBJS:.o=.d)

INC_DIRS += ./petActive/include

INC_FLAGS := $(addprefix -I,$(INC_DIRS))