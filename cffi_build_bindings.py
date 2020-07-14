import cffi, pathlib

ffi = cffi.FFI()

this_dir = pathlib.Path().absolute()
h_file_name = this_dir / "src_eastrising/029_1R/bcm2835/obj/ER-EPD029-1R.h"
with open(h_file_name) as h_file:
    ffi.cdef(h_file.read())


ffi.set_source(
    "EPD029_1R",
    # Since you're calling a fully-built library directly, no custom source
    # is necessary. You need to include the .h files, though, because behind
    # the scenes cffi generates a .c file that contains a Python-friendly
    # wrapper around each of the functions.
    '#include "src_eastrising/029_1R/bcm2835/obj/ER-EPD029-1R.h"',
    # The important thing is to include the pre-built lib in the list of
    # libraries you're linking against:
    libraries=["EPD029_1R"],
    library_dirs=[this_dir.as_posix()],
    extra_link_args=["-Wl,-rpath,."],
)
ffi.compile()

