xppaut
-------


This branch attempts to reorganise the xppaut code and use cmake as the build system. The original xpp code is here: http://www.math.pitt.edu/%7Ebard/xpp/xpp.html

To use this branch, checkout this fork, switch to this branch:

```
git clone https://github.com/sanjayankur31/xppaut.git
git checkout -b wip-cmake-new
```


then, 

```
mkdir build
cd build
cmake ..
make
```

The xppaut executable will be present in the src directory.

If something doesn't work, please let me know. The cmake build part may not be complete.
