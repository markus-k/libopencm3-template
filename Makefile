PROJECT = locm3-disco
BUILD_DIR = bin

SHARED_DIR =
CFILES += src/main.c
AFILES +=

# TODO - you will need to edit these two lines!
DEVICE=stm32f303vct6
OOCD_FILE = board/stm32f3discovery.cfg

# You shouldn't have to edit anything below here.

INCLUDES += $(patsubst %,-I%, . $(SHARED_DIR))
OPENCM3_DIR=libopencm3

include $(OPENCM3_DIR)/mk/genlink-config.mk
include rules.mk
include $(OPENCM3_DIR)/mk/genlink-rules.mk
