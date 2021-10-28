#!/bin/bash
if [ -n "$OLD_LD_LIBPATH" ]; then
  export LD_LIBRARY_PATH=${OLD_LD_LIBPATH}
else
  unset LD_LIBRARY_PATH
fi
