LIB_DIR = lib

default: BDEInk2_9_Red.so

BDEInk2_9_Red.so: 
	python3 setup.py build_ext --inplace

clean:
	- rm -r build/ *.so BDEInk2_9_Red/*.c* c_029_1R/*.c* 2>/dev/null

test:
	python3 -c "import BDEInk2_9_Red;barf = BDEInk2_9_Red.BDEInk2_9_Red();barf.start()"
