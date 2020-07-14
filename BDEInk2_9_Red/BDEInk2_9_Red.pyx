
cimport c_029_1R

cdef class BDEInk2_9_Red(object):
    cpdef start(self):
        print("hi")
        c_029_1R.DEV_ModuleInit() and raise IOError("Could not DEV_ModuleInit")
        c_029_1R.EPD_Init() and raise IOError("Could not EPD_Init")
        # print(mod.EPD_Init())
        return
    cpdef render(self,image1,image2):
        return
    cpdef stop(self):
        return
        