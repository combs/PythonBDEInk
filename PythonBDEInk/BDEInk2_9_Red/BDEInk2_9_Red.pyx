
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
    
    cpdef clear(self):
        c_029_1R.EPD_Clear()
        return

    cpdef render(self,image1,image2):
        c_029_1R.EPD_Display(image1,image2)
        return

    cpdef stop(self):
        c_029_1R.EPD_Sleep()
        return
        