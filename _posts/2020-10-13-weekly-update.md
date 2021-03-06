---
layout: post
title: Update up to 2020-10-13
---

The latest updates for the last two weeks of work.

## EIR

- Fix named lambdas and refactor escape character handling
- Rework typespec parsing
- Evaluate record indexing as constants in evaluator
- Fix binary construction with string literals
- Fall back to literal on unknown escape character
- Parsing warning toggle flags properly

## Compiler codegen

- Implement `Callee::GlobalDynamic`. This is all calls of the form `M:F(A1, A2, ...)` where `M` is variable module and
  `F` is a variable function, but the arity is fixed. It is lowered to an `apply/3` call.
- EIR groups repeated logic operations (`and` and `or`) with the same operator like `A and B and C` into a single
  logical operation, but the codegen previously thought they were binary operations only, so now handle the EIR
  operations having a variable number of operands, but still lower them to binary operations in MLIR.

## Runtime built-ins

- Built-ins math operators that did not have `badarith` handling now defer to the `liblumen_otp` version that do.
  - `//2`
  - `div/2`
- Stub out NIF-related functions, so NIF module in OTP can link
  - `load_nif/2`
  - `nif_error/1`

## `liblumen_otp` testing

- Rust unit tests converted to Erlang integration tests
  - Exceptions
    - `error/1`
    - `error/2`
    - `exit/1`
  - Functions
    - `function_exported/3`
  - Guards
    - `is_binary/1`
    - `is_boolean/1`
    - `is_float/1`
    - `is_integer/1`
    - `is_list/1`
    - `is_map/1`
    - `is_number/1`
    - `is_pid/1`
    - `is_process_alive/1`
  - Lists
    - `++/2`
    - `hd/1`
    - `tl/1`
  - Monitors
    - `demonitor/1`
    - `demonitor/2`
  - Numbers
    - `//2`
    - `ceil/1`
    - `div/2`
    - `float/1`
    - `floor/1`
  - Time
    - `convert_time_unit/3`
  - Timers
    - `cancel_timer/2`
  - Tuples
    - `delete_element/3`
    - `element/2`
    - `insert_element/3`

## Commits

### Repo: lumen/lumen

- [bd07cc7](https://github.com/lumen/lumen/commit/bd07cc7) by Luke Imhoff, 2020-10-08 20:50:28 -0500: Fix typo in builtin symbolName

- [28fac85](https://github.com/lumen/lumen/commit/28fac85) by Luke Imhoff, 2020-10-08 20:48:27 -0500: Add missing imports for lumen::otp tests

- [296e7d6](https://github.com/lumen/lumen/commit/296e7d6) by Luke Imhoff, 2020-10-08 13:34:50 -0500: Migrate to environment files

- [df78678](https://github.com/lumen/lumen/commit/df78678) by Luke Imhoff, 2020-10-08 13:04:02 -0500: Support variadic logic and and or from EIR

- [d6c5f46](https://github.com/lumen/lumen/commit/d6c5f46) by Luke Imhoff, 2020-10-06 21:54:49 -0500: Include logical operation kind when num_reads assertion fails

- [8ae1d50](https://github.com/lumen/lumen/commit/8ae1d50) by Luke Imhoff, 2020-10-06 21:26:00 -0500: Implement Callee::GlobalDynamic

- [37ceeab](https://github.com/lumen/lumen/commit/37ceeab) by Luke Imhoff, 2020-10-06 12:55:49 -0500: Update EIR

- [be8395d](https://github.com/lumen/lumen/commit/be8395d) by Luke Imhoff, 2020-10-05 14:56:32 -0500: erlang:load_nif/2

- [efbd0b7](https://github.com/lumen/lumen/commit/efbd0b7) by Luke Imhoff, 2020-10-05 14:21:28 -0500: erlang:nif_error/1

- [316b85c](https://github.com/lumen/lumen/commit/316b85c) by Luke Imhoff, 2020-10-05 13:01:06 -0500: Install Erlang on CI

- [6000904](https://github.com/lumen/lumen/commit/6000904) by Luke Imhoff, 2020-10-05 10:08:42 -0500: Update EIR

- [70f445b](https://github.com/lumen/lumen/commit/70f445b) by Luke Imhoff, 2020-10-01 19:44:45 -0500: Integration tests for is_process_alive/1

- [3164e5c](https://github.com/lumen/lumen/commit/3164e5c) by Luke Imhoff, 2020-10-01 19:14:53 -0500: Integration tests for is_pid/1

- [4141e5a](https://github.com/lumen/lumen/commit/4141e5a) by Luke Imhoff, 2020-10-01 19:03:57 -0500: Integration tests for is_number/1

- [08df073](https://github.com/lumen/lumen/commit/08df073) by Luke Imhoff, 2020-10-01 18:46:09 -0500: Integration tests for is_map/1

- [5786ee0](https://github.com/lumen/lumen/commit/5786ee0) by Luke Imhoff, 2020-10-01 17:18:43 -0500: Integration tests for is_integer/1

- [0cdd3f6](https://github.com/lumen/lumen/commit/0cdd3f6) by Luke Imhoff, 2020-10-01 17:03:47 -0500: Integration tests for is_float/1

- [9156276](https://github.com/lumen/lumen/commit/9156276) by Luke Imhoff, 2020-10-01 14:57:41 -0500: Integration tests for is_boolean/1

- [40d270f](https://github.com/lumen/lumen/commit/40d270f) by Luke Imhoff, 2020-10-01 14:34:55 -0500: Integration tests for insert_element/3

- [108c5da](https://github.com/lumen/lumen/commit/108c5da) by Luke Imhoff, 2020-10-01 12:32:17 -0500: Integration tests for is_binary/1

- [a5589da](https://github.com/lumen/lumen/commit/a5589da) by Luke Imhoff, 2020-10-01 10:58:19 -0500: Integration tests for is_list/1

- [b806bad](https://github.com/lumen/lumen/commit/b806bad) by Luke Imhoff, 2020-10-01 10:43:57 -0500: Integration tests for tl/1

- [8777898](https://github.com/lumen/lumen/commit/8777898) by Luke Imhoff, 2020-10-01 10:34:58 -0500: Integration tests for hd/1

- [d47db38](https://github.com/lumen/lumen/commit/d47db38) by Luke Imhoff, 2020-10-01 09:13:34 -0500: Integration tests for function_exported/3

- [8240719](https://github.com/lumen/lumen/commit/8240719) by Luke Imhoff, 2020-09-30 20:02:45 -0500: Integration tests for floor/1

- [9b7409a](https://github.com/lumen/lumen/commit/9b7409a) by Luke Imhoff, 2020-09-30 19:22:51 -0500: Integration tests for float/1 including badarg

- [1cf5374](https://github.com/lumen/lumen/commit/1cf5374) by Luke Imhoff, 2020-09-30 19:09:59 -0500: Remove exit/1 unit tests

- [052d89d](https://github.com/lumen/lumen/commit/052d89d) by Luke Imhoff, 2020-09-30 14:59:02 -0500: Integration tests for error/2

- [3852738](https://github.com/lumen/lumen/commit/3852738) by Luke Imhoff, 2020-09-30 14:41:30 -0500: Integration tests for error/1

- [cc04767](https://github.com/lumen/lumen/commit/cc04767) by Luke Imhoff, 2020-09-30 14:21:43 -0500: Integration tests for element/2

- [4905bed](https://github.com/lumen/lumen/commit/4905bed) by Luke Imhoff, 2020-09-30 13:27:55 -0500: Integration tests for //2

- [f91be44](https://github.com/lumen/lumen/commit/f91be44) by Luke Imhoff, 2020-09-30 13:08:51 -0500: Use liblumen_otp erlang://2 for \_\_lumen_builtin_math.fdiv

- [89d0f2f](https://github.com/lumen/lumen/commit/89d0f2f) by Luke Imhoff, 2020-09-30 10:38:42 -0500: Integration tests for div/2

- [f861ea9](https://github.com/lumen/lumen/commit/f861ea9) by Luke Imhoff, 2020-09-30 10:38:23 -0500: Use liblumen_otp erlang:div/2 for \_\_lumen_builtin_math.div

- [d5ddec9](https://github.com/lumen/lumen/commit/d5ddec9) by Luke Imhoff, 2020-09-29 18:59:50 -0500: Integration tests for demonitor/2 including badarg and flush option

- [af3cff6](https://github.com/lumen/lumen/commit/af3cff6) by Luke Imhoff, 2020-09-29 14:12:33 -0500: Integration tests for demonitor/1 including badarg

- [c5a298a](https://github.com/lumen/lumen/commit/c5a298a) by Luke Imhoff, 2020-09-29 13:12:41 -0500: Integration tests for delete_element/2

- [d2695e3](https://github.com/lumen/lumen/commit/d2695e3) by Luke Imhoff, 2020-09-29 12:52:14 -0500: Integration tests for convert_time_unit/3 including badarg

- [172bcee](https://github.com/lumen/lumen/commit/172bcee) by Luke Imhoff, 2020-09-29 12:22:51 -0500: Integration tests for ++/2

- [cd44175](https://github.com/lumen/lumen/commit/cd44175) by Luke Imhoff, 2020-09-29 09:41:43 -0500: Integration tests for erlang:ceil/1 including badarg

- [d914f21](https://github.com/lumen/lumen/commit/d914f21) by Luke Imhoff, 2020-09-29 09:33:37 -0500: Integration tests for erlang:cancel_timer/2

### Repo: eirproject/eir

- [2a89b9c](https://github.com/eirproject/eir/commit/2a89b9c) by Hans Elias B. Josephsen, 2020-10-06 08:58:26 +0200: Parse warning toggle flags propely

- [0f31e4a](https://github.com/eirproject/eir/commit/0f31e4a) by Hans Elias B. Josephsen, 2020-10-06 07:35:13 +0200: Fall back to literal on unknown escape character

- [ec689a8](https://github.com/eirproject/eir/commit/ec689a8) by Hans Elias B. Josephsen, 2020-10-05 12:48:16 +0200: Fix binary construction with string literals

- [8bcf7a7](https://github.com/eirproject/eir/commit/8bcf7a7) by Hans Elias B. Josephsen, 2020-10-05 12:37:10 +0200: Fix compilation of `erlang.erl`

- [ef2c1c9](https://github.com/eirproject/eir/commit/ef2c1c9) by Hans Elias B. Josephsen, 2020-10-02 13:35:51 +0200: Fix named lambdas and refactor escape character handling
