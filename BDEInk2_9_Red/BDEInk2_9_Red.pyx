# distutils: sources = ../libraries/eastrising/029_1R/bcm2835/obj/ER-EPD029-1R.c
# distutils: include_dirs = ../libraries/eastrising/029_1R/bcm2835/obj/


from c_029_1R cimport c_029_1R

cdef class BDEInk2_9_Red(object):
    cpdef start(self):
        # c_029_1R.EPD_Init()
        print(c_029_1R.EPD_Init())
        return
    cpdef render(self,image1,image2):
        return
    cpdef stop(self):
        return
        