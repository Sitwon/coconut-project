# This Makefile will try to discover and compile all Coconut source files

include Makefile_coconut

SOURCEDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
objects := $(shell find $(SOURCEDIR) -name '*.coc' -or -name '*.coco' -or -name '*.coconut')
objects := $(patsubst %.coconut,%.py,$(objects))
objects := $(patsubst %.coco,%.py,$(objects))
objects := $(patsubst %.coc,%.py,$(objects))

.PHONY: all
all: $(objects)

