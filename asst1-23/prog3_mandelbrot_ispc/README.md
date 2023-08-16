# Report

CPU:
13th Gen Intel(R) Core(TM) i9-13900HX 2.20 GHz, 24 Cores, 32 Logic Cores

## Asst 1 (23) Prob 3

### Part 1 ISPC Basics

- The maximum speedup I expect is 8
- However the actual speedup is around 3-4

- Maybe that's due to the execute time is different at different position in mandel function.
- Many "streams" have to wait for slower ones.
- Beacuse of conditions, Not all ALUs do useful work!
- Maybe schedule time also effects.

### Part 2: ISPC Tasks

- I simply add 1 to `rowsPerTask` if `height % threadCount != 0`.
- 16 tasks is enough to achieve 20x speed up.

- `pthread` need OS to schedule the threads.
- ISPC directly compiles the code to machine code.