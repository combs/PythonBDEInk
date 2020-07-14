ctypedef int uint8_t

cpdef int test()

cdef extern from "ER-EPD029-1R.h":
    uint8_t EPD_Init()
