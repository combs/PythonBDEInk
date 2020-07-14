from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

import os
base = os.path.dirname(os.path.realpath(__file__))
print("setup.py hello from " + base)

c_029_1R = Extension(
    name="c_029_1R",
    sources=["c_029_1R/c_029_1R.pxd","libraries/bcm2835/src/bcm2835.c", "libraries/eastrising/029_1R/bcm2835/obj/ER-EPD029-1R.c"],
    language='c++',
    extra_compile_args=['-static'],
    include_dirs=[base + '/libraries/eastrising/029_1R/bcm2835/obj/', base + '/libraries/bcm2835/src/']
    )
    

BDEInk2_9_Red = Extension(
    name="BDEInk2_9_Red",
    sources=["BDEInk2_9_Red/BDEInk2_9_Red.pyx","libraries/bcm2835/src/bcm2835.c", "libraries/eastrising/029_1R/bcm2835/obj/ER-EPD029-1R.c"])


setup(
    name="BDEInk2_9_Red",
    version='1.0',
    author='Chris Combs',
    author_email='ccombs@gmail.com',
    ext_modules=cythonize([BDEInk2_9_Red])
)
