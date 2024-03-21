# Homework 2

## Problem 1

Milestone first two entries alread done.

## Problem 2

### a

I've implemented 7 versions of code.

Version 1 (slow_implementation) is the original unoptimized code.

Version 2 ()

...

### b

There are 50 iterations of outer loop and 16 inner loop. Within each outer loop, there are 6 `sqrt` operations; For each inner loop, there are roughly $10 * 6$ flops including `add` and `mul` (roughly, because it depends on the runtime value). There are about $50 * 6 + 50 * 100 * 10 = 50300$ flops, and it cost about 64000 cycles, so the max performance is: $TBD$.

### c

Since it can issue two floating point operations at the same time, theoretical performance peak would be 2 flops/cycle.

## Problem 3



