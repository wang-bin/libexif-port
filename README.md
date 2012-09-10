libexif-port
============

port for win msvc etc.


How To Build
=============
cd /path/of/libexif-port

msvc or icl:
=
set BUILD_DIR=/your/build/dir

qmake -r

nmake



*nix or gcc:
=
set BUILD_DIR=/your/build/dir

qmake

or 

BUILD_DIR=/your/build/dir qmake -r

make -j4
