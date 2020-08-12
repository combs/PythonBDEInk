from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

import os
base = os.path.dirname(os.path.realpath(__file__))
print("setup.py hello from " + base)


PythonBDEInk = Extension(
    name="PythonBDEInk",
    sources=["PythonBDEInk/BDEInk2_9_Red/BDEInk2_9_Red.pyx","libraries/bcm2835/src/bcm2835.c", "libraries/eastrising/029_1R/bcm2835/obj/ER-EPD029-1R.c", "libraries/eastrising/029_1R/bcm2835/obj/DEV_Config.c"], include_dirs=["libraries/bcm2835/src"])


setup(
    name="PythonBDEInk",
    version='1.1',
    author='Chris Combs',
    author_email='ccombs@gmail.com',
    ext_modules=cythonize([PythonBDEInk])
)
