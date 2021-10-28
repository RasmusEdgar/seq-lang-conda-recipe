#!/bin/bash
if [ -n "$LD_LIBRARY_PATH" ]; then
  export OLD_LD_LIBPATH=${LD_LIBRARY_PATH}
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${CONDA_PREFIX}/lib/seq:${CONDA_PREFIX}/lib
else
  export LD_LIBRARY_PATH=${CONDA_PREFIX}/lib/seq:${CONDA_PREFIX}/lib
fi
