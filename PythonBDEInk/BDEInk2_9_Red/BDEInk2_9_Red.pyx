#!/usr/bin/env python
# encoding: utf-8
# cython: language_level=3
from __future__ import print_function

cimport c_029_1R
import time

cdef class BDEInk2_9_Red(object):

    cdef public bint deviceinit 
    cdef public double timeLastUpdated
    cdef public int refreshLock

    def __init__(self):
        self.deviceinit = False
        self.refreshLock = 180
        self.timeLastUpdated = time.time() - self.refreshLock

    cpdef start(self):
        if self.deviceinit == False:
            if c_029_1R.DEV_ModuleInit() > 0:
                raise IOError("Could not DEV_ModuleInit")
            else:
                self.deviceinit = True
        if c_029_1R.EPD_Init() > 0:
            raise IOError("Could not EPD_Init")
        # print(mod.EPD_Init())
        return
    
    cpdef clear(self):
        c_029_1R.EPD_Clear()
        return

    cpdef render(self, image1, image2):
        seconds = time.time() - self.timeLastUpdated
        if seconds < self.refreshLock:
            print("Another render was requested after " + str(seconds) + " seconds. To prevent hardware damage, EInk updates can only occur every " + str(self.refreshLock) + " seconds")
            return
        c_029_1R.EPD_Display(image1,image2)
        self.timeLastUpdated = time.time()
        return

    cpdef stop(self):
        c_029_1R.EPD_Sleep()
        return
        