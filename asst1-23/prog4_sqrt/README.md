# Report

CPU:
13th Gen Intel(R) Core(TM) i9-13900HX 2.20 GHz, 24 Cores, 32 Logic Cores

## Asst 1 (23) Prob 4

- 3.65x speedup from ISPC
- 52.79x speedup from task ISPC

### My solution

- `initGood()`: assign 2.999f to all `values[i]`, because:
    - 2.999f takes longest time for once calculation
    - balance produces the best speed-up performance when execute streams have to wait for others
- `initGood()`: assign 1.0f to all `values[i]` except one which is 0.001f, because:
    - 1.0f takes shortest time for once calculation
    - same reason above
