#!/usr/bin/env bash
set -e
set -o pipefail

for CHANGE in "activate" "deactivate"; do
    mkdir -p "${PREFIX}/etc/conda/${CHANGE}.d"
    cp "${RECIPE_DIR}/${CHANGE}.sh" "${PREFIX}/etc/conda/${CHANGE}.d/${PKG_NAME}_${CHANGE}.sh"
done
mkdir -p "$PREFIX"/lib/
mv lib/seq/{libseqrt,libseq}.so "$PREFIX"/lib/
cp -r lib "$PREFIX"/
cp -r bin "$PREFIX"/
