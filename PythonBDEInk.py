from __future__ import print_function
import pyximport
import os

base = os.path.dirname(os.path.realpath(__file__))
# pyximport.install(setup_args={'include_dirs': [ base + '/libraries/eastrising/029_1R/bcm2835/obj/' , base + '/libraries/bcm2835/src/'] })
pyximport.install(inplace=True)

import signal, sys, time, socket, subprocess, platform

from BDEInk2_9_Red.BDEInk2_9_Red import BDEInk2_9_Red

barf = BDEInk2_9_Red()
barf.start()