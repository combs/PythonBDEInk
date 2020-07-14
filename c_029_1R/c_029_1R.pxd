
ctypedef int uint8_t

cdef extern from "../libraries/eastrising/029_1R/bcm2835/obj/DEV_Config.h":
    uint8_t DEV_ModuleInit()

cdef extern from "../libraries/eastrising/029_1R/bcm2835/obj/ER-EPD029-1R.h":
    uint8_t EPD_Init()
    EPD_Clear()
    EPD_Display(bytearray blackimage, bytearray redimage)
    EPD_Sleep()
    EPD_SetLut()

