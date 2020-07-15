
cdef class BDEInk2_9_Red (object):

    cdef public bint deviceinit 

    cpdef start(self)
    cpdef clear(self)
    cpdef render(self,image1,image2)
    cpdef stop(self)