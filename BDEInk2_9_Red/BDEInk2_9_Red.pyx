
cimport c_029_1R

cdef class BDEInk2_9_Red(object):
    cpdef start(self):
        print("hi")
        if c_029_1R.DEV_ModuleInit() > 0:
            raise IOError("Could not DEV_ModuleInit")
        if c_029_1R.EPD_Init() > 0:
            raise IOError("Could not EPD_Init")
        # print(mod.EPD_Init())
        return
    cpdef render(self,image1,image2):
        return
    cpdef stop(self):
        return
        