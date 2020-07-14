ctypedef int uint8_t

cdef extern from "ER-EPD029-1R.h":
    uint8_t EPD_Init()
