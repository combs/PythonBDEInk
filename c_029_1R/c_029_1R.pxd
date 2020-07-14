# distutils: sources = ../libraries/eastrising/029_1R/bcm2835/obj/ER-EPD029-1R.c, ../libraries/bcm2835/src/bcm2835.c
# distutils: include_dirs = ../libraries/eastrising/029_1R/bcm2835/obj/, ../libraries/bcm2835/src/

ctypedef int uint8_t

cdef extern from "../libraries/eastrising/029_1R/bcm2835/obj/ER-EPD029-1R.h":
    uint8_t EPD_Init()
