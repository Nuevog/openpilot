#!/usr/bin/env bash

export OMP_NUM_THREADS=1
export MKL_NUM_THREADS=1
export NUMEXPR_NUM_THREADS=1
export OPENBLAS_NUM_THREADS=1
export VECLIB_MAXIMUM_THREADS=1

if [ -z "$AGNOS_VERSION" ]; then
  if [ -f "/VERSION" ]; then
    export AGNOS_VERSION=$(cat /VERSION)
  else
    export AGNOS_VERSION="12.3"
  fi
fi

export STAGING_ROOT="/data/safe_staging"
