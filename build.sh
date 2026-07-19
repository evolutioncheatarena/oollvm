#!/usr/bin/env bash
set -euo pipefail

if [[ -f CMakeLists.txt ]]; then
  cmake -S . -B build -G Ninja
  cmake --build build
else
  echo "No CMakeLists.txt found. Nothing to build."
fi
