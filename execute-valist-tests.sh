#!/bin/bash

FILTER="va-*\ *-va-*\ va_*\ *_va_*\ *var_copy*\ *varg*\ *vaarg*\ *vararg*\ *stdar*\ *printf*"

.github/scripts/toolchain/execute-gcc-tests.sh gcc-tests-va-list-after "" "\
  aapcs.exp=$FILTER \
  aapcs64.exp=$FILTER \
  aarch64-sve-pcs.exp=$FILTER \
  aarch64.exp=$FILTER \
  analyzer.exp=$FILTER \
  compile.exp=$FILTER \
  dfp.exp=$FILTER \
  dg.exp=$FILTER \
  fixed-point.exp=$FILTER \
  execute.exp=$FILTER \
  noncompile.exp=$FILTER \
  stackalign.exp=$FILTER \
  torture.exp=$FILTER \
  tree-prof.exp=$FILTER \
  tree-ssa.exp=$FILTER \
  vmx.exp=$FILTER \
  format.exp"
.github/scripts/toolchain/create-gcc-summary.sh artifact/gcc-tests-va-list-after > artifact/gcc-tests-va-list-after/summary.md

#gcc/testsuite/g++.dg/torture/stackalign/eh-vararg-1.C
#gcc/testsuite/gcc.dg/torture/c23-stdarg-split-1b.c
#gcc/gcc/testsuite/gcc.dg/torture/va-arg-25.c
#gcc/gcc/testsuite/gcc.dg/tree-prof/va-arg-pack-1.c
