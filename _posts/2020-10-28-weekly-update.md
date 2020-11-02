---
layout: post
title: Weekly update up to 2020-10-28
---


This week the compiler saw a significant number of fixes and improvements, and the
build system was consolidated under `cargo make` in an effort to make it easier to use, 
more consistent, and rely less on platform-specific functionality.


## Compiler

- The codgen backend was significantly refactored in order to be stricter about type information,
  which in turn is used to address a number of miscompilations or compiler panics due to incorrect
  lowerings.
- Fixes for several outstanding compiler bugs, primarily those which produced diagnostics from MLIR
  about mismatched types.
- Fixed bugs in the handling of dynamic apply, which resulted in incorrect runtime behavior in some
  cases, especially nested closures.
- Updated LLVM/MLIR

## Build

- Switched from a combination of `make` and `sh` scripts to `cargo make`
- Most of the logic that was previously in `bin/build-lumen` is now in `scripts/lumen.rs`
- Lumen now builds successfully on Linux in CI


## Commits 


### Repo: lumen/lumen


- [048df6c](https://github.com/lumen/lumen/commit/048df6c) by Paul Schoenfelder, 2020-10-28 00:35:42 -0400: ci: tweak workflows

- [054d639](https://github.com/lumen/lumen/commit/054d639) by Paul Schoenfelder, 2020-10-27 23:26:41 -0400: build: ensure tests stay contained and self-clean

- [0d43f9e](https://github.com/lumen/lumen/commit/0d43f9e) by Paul Schoenfelder, 2020-10-27 18:52:50 -0400: fix: ensure piped stdout/stderr are closed when exiting build command

- [b407a5b](https://github.com/lumen/lumen/commit/b407a5b) by Paul Schoenfelder, 2020-10-27 17:12:21 -0400: ci: another attempt at fixing hangs

- [cec414b](https://github.com/lumen/lumen/commit/cec414b) by Paul Schoenfelder, 2020-10-27 15:54:58 -0400: ci: add some additional logging to build script

- [3b0aaab](https://github.com/lumen/lumen/commit/3b0aaab) by Paul Schoenfelder, 2020-10-27 12:03:14 -0400: build: attempt to address ci hang issue

- [6c39991](https://github.com/lumen/lumen/commit/6c39991) by Paul Schoenfelder, 2020-10-27 10:47:52 -0400: build: do not attach stdin to internal build command

- [2b7666c](https://github.com/lumen/lumen/commit/2b7666c) by Paul Schoenfelder, 2020-10-27 10:47:16 -0400: ci: be more precise about toolchain

- [b410b43](https://github.com/lumen/lumen/commit/b410b43) by Paul Schoenfelder, 2020-10-27 02:54:57 -0400: build: do not execute lumen-tblgen task in parallel with others

- [fc268eb](https://github.com/lumen/lumen/commit/fc268eb) by Paul Schoenfelder, 2020-10-27 02:47:21 -0400: style: tweak cpp formatting style

- [ab17daf](https://github.com/lumen/lumen/commit/ab17daf) by Paul Schoenfelder, 2020-10-27 02:33:14 -0400: fix: invocation of rustup run in lumen.rs

- [4d51674](https://github.com/lumen/lumen/commit/4d51674) by Paul Schoenfelder, 2020-10-27 00:46:48 -0400: ci: fix yaml errors in compiler workflows

- [a08b276](https://github.com/lumen/lumen/commit/a08b276) by Paul Schoenfelder, 2020-10-27 00:40:58 -0400: ci: fix arguments passed to wasm-pack tests

- [c14bc28](https://github.com/lumen/lumen/commit/c14bc28) by Paul Schoenfelder, 2020-10-27 00:38:46 -0400: style: fix format-cpp task, update formatting

- [2f7a8ff](https://github.com/lumen/lumen/commit/2f7a8ff) by Paul Schoenfelder, 2020-10-27 00:26:49 -0400: test: do not set --all-features by default

- [23eb08f](https://github.com/lumen/lumen/commit/23eb08f) by Paul Schoenfelder, 2020-10-27 00:15:56 -0400: chore: update readme

- [3efa2e6](https://github.com/lumen/lumen/commit/3efa2e6) by Paul Schoenfelder, 2020-10-27 00:08:40 -0400: ci: fix arg parsing issue with test-rust task

- [358c06b](https://github.com/lumen/lumen/commit/358c06b) by Paul Schoenfelder, 2020-10-26 23:29:01 -0400: build: fix ordering of includes that breaks build

- [1cea010](https://github.com/lumen/lumen/commit/1cea010) by Paul Schoenfelder, 2020-10-26 22:25:21 -0400: ci: set toolchain based on env

- [b9262f0](https://github.com/lumen/lumen/commit/b9262f0) by Paul Schoenfelder, 2020-10-26 21:57:35 -0400: style: format cpp code

- [4c2ac91](https://github.com/lumen/lumen/commit/4c2ac91) by Paul Schoenfelder, 2020-10-26 18:21:25 -0400: build: refactor build around cargo-make

- [e15c795](https://github.com/lumen/lumen/commit/e15c795) by Paul Schoenfelder, 2020-10-24 15:44:06 -0400: build: cleanup makefile targets

- [c5c307d](https://github.com/lumen/lumen/commit/c5c307d) by Paul Schoenfelder, 2020-10-24 15:26:49 -0400: ci: fix reference to build-shared task

- [c591d24](https://github.com/lumen/lumen/commit/c591d24) by Paul Schoenfelder, 2020-10-24 15:26:14 -0400: test: fix flakiness in cancel_timer_1 test

- [47f86fc](https://github.com/lumen/lumen/commit/47f86fc) by Paul Schoenfelder, 2020-10-24 13:42:37 -0400: ci: update examples repo ref

- [65a8365](https://github.com/lumen/lumen/commit/65a8365) by Paul Schoenfelder, 2020-10-24 13:27:42 -0400: ci: remove usage of add-path in build-lumen script

- [6bbb0da](https://github.com/lumen/lumen/commit/6bbb0da) by Paul Schoenfelder, 2020-10-24 13:23:23 -0400: fix: missing feature in web test crate

- [1c7ec30](https://github.com/lumen/lumen/commit/1c7ec30) by Paul Schoenfelder, 2020-10-24 13:05:06 -0400: fix: do not mussttail calls which cannot be optimized

- [bea590d](https://github.com/lumen/lumen/commit/bea590d) by Paul Schoenfelder, 2020-10-24 02:04:28 -0400: fix: fix bug in specialization of math ops, neg folds

- [1582a39](https://github.com/lumen/lumen/commit/1582a39) by Paul Schoenfelder, 2020-10-23 21:20:49 -0400: style: fix formatting

- [ce40405](https://github.com/lumen/lumen/commit/ce40405) by Paul Schoenfelder, 2020-10-23 20:33:34 -0400: fix: compiler crash due to missing return value in verifier

- [8e96469](https://github.com/lumen/lumen/commit/8e96469) by Paul Schoenfelder, 2020-10-23 19:19:43 -0400: fix: properly handle spills in dynamic calls

- [4bb06d0](https://github.com/lumen/lumen/commit/4bb06d0) by Paul Schoenfelder, 2020-10-22 17:49:08 -0400: ci: update linux build

- [d169b63](https://github.com/lumen/lumen/commit/d169b63) by Paul Schoenfelder, 2020-10-22 15:16:38 -0400: fix: is_type bug, logical op implementations

- [b323988](https://github.com/lumen/lumen/commit/b323988) by Paul Schoenfelder, 2020-10-22 00:07:24 -0400: fix: unwinding through dynamic calls

- [1887e30](https://github.com/lumen/lumen/commit/1887e30) by Paul Schoenfelder, 2020-10-20 16:25:10 -0400: fix: make all comparison intrinsics return i1

- [49a8390](https://github.com/lumen/lumen/commit/49a8390) by Paul Schoenfelder, 2020-10-15 00:47:42 -0400: fix: typo in apply/2 of rt_full

- [61f7c47](https://github.com/lumen/lumen/commit/61f7c47) by Paul Schoenfelder, 2020-10-15 00:34:30 -0400: fix: improper list passed to apply/3

- [7246444](https://github.com/lumen/lumen/commit/7246444) by Paul Schoenfelder, 2020-10-14 23:06:19 -0400: fix: revert change to lowering of eir.bool

- [ef16149](https://github.com/lumen/lumen/commit/ef16149) by Paul Schoenfelder, 2020-10-14 21:51:46 -0400: ci: update llvm release

- [ad54d61](https://github.com/lumen/lumen/commit/ad54d61) by Paul Schoenfelder, 2020-10-14 15:26:48 -0400: fix: invalid legalization of mlir func op

- [f1214ea](https://github.com/lumen/lumen/commit/f1214ea) by Paul Schoenfelder, 2020-10-14 14:40:24 -0400: fix: source type of casts not updated when trace constructors inserted

- [76da9ef](https://github.com/lumen/lumen/commit/76da9ef) by Paul Schoenfelder, 2020-10-14 12:59:01 -0400: fix: equality comparison strictness

- [126288a](https://github.com/lumen/lumen/commit/126288a) by Paul Schoenfelder, 2020-10-14 12:05:38 -0400: feat: lower globally dynamic calls to apply/3

- [befa03c](https://github.com/lumen/lumen/commit/befa03c) by Paul Schoenfelder, 2020-10-14 09:39:43 -0400: fix: bugs in implementation of apply/2 and /3

- [c1472d5](https://github.com/lumen/lumen/commit/c1472d5) by Paul Schoenfelder, 2020-09-24 14:17:34 -0400: refactor: types and canonicalization during codegen

- [1682528](https://github.com/lumen/lumen/commit/1682528) by Paul Schoenfelder, 2020-09-24 12:23:38 -0400: refactor: clean up artifact emission for generated files

- [93a5e36](https://github.com/lumen/lumen/commit/93a5e36) by Paul Schoenfelder, 2020-09-10 00:16:34 -0400: fix: constant folds of arithmetic ops

- [6e61802](https://github.com/lumen/lumen/commit/6e61802) by Paul Schoenfelder, 2020-09-09 10:16:02 -0400: feat: implement logical op intrinsics

- [eb6e1fd](https://github.com/lumen/lumen/commit/eb6e1fd) by Paul Schoenfelder, 2020-09-08 17:35:44 -0400: refactor: use stricter approach to types

- [20bba52](https://github.com/lumen/lumen/commit/20bba52) by Paul Schoenfelder, 2020-09-08 17:31:12 -0400: fix: use named types for tuples

- [d860933](https://github.com/lumen/lumen/commit/d860933) by Paul Schoenfelder, 2020-09-08 17:30:30 -0400: feat: add is_tuple/is_function intrinsics

- [35aa948](https://github.com/lumen/lumen/commit/35aa948) by Paul Schoenfelder, 2020-09-08 17:27:22 -0400: feat: add pattern binders for atoms/bools

- [a1ee911](https://github.com/lumen/lumen/commit/a1ee911) by Paul Schoenfelder, 2020-09-08 17:25:54 -0400: fix: use diagnostics for pattern match lowering failures

- [194e6df](https://github.com/lumen/lumen/commit/194e6df) by Paul Schoenfelder, 2020-09-08 17:21:27 -0400: refactor: tweak the layout of closure for easier type checking

- [27b89f7](https://github.com/lumen/lumen/commit/27b89f7) by Paul Schoenfelder, 2020-09-08 17:19:11 -0400: feat: add compiler support for pid/reference types

- [3a6861a](https://github.com/lumen/lumen/commit/3a6861a) by Paul Schoenfelder, 2020-09-06 14:07:57 -0400: chore: clean up unused closure ops

- [393b65d](https://github.com/lumen/lumen/commit/393b65d) by Paul Schoenfelder, 2020-09-06 13:33:58 -0400: fix: cast op verifier for boxed operands

- [874acb0](https://github.com/lumen/lumen/commit/874acb0) by Paul Schoenfelder, 2020-09-06 13:23:31 -0400: fix: compilation on linux in builder lib

- [7b5338f](https://github.com/lumen/lumen/commit/7b5338f) by Paul Schoenfelder, 2020-09-06 00:41:47 -0400: fix: type of constant lists

- [f4d4fc5](https://github.com/lumen/lumen/commit/f4d4fc5) by Paul Schoenfelder, 2020-09-06 00:40:42 -0400: fix: specialize cmp.eq/neq and logical.and/or ops

- [317f5e4](https://github.com/lumen/lumen/commit/317f5e4) by Paul Schoenfelder, 2020-09-06 00:38:44 -0400: fix: address confusing use of constant atoms for boolean values

- [172f2ee](https://github.com/lumen/lumen/commit/172f2ee) by Paul Schoenfelder, 2020-09-06 00:36:48 -0400: fix: classification of boxes/opaque values as immediates

- [25dbe36](https://github.com/lumen/lumen/commit/25dbe36) by Paul Schoenfelder, 2020-09-06 00:34:34 -0400: fix: always propagate result type of intrinsics to corresponding block args

- [c23635b](https://github.com/lumen/lumen/commit/c23635b) by Paul Schoenfelder, 2020-09-06 00:33:43 -0400: fix: ensure process init only occurs once

- [f945fad](https://github.com/lumen/lumen/commit/f945fad) by Paul Schoenfelder, 2020-09-05 16:54:55 -0400: refactor: clean up/document context switching, closures

- [3cc25ef](https://github.com/lumen/lumen/commit/3cc25ef) by Paul Schoenfelder, 2020-09-04 11:37:48 -0400: fix: function captures

- [e89e1c1](https://github.com/lumen/lumen/commit/e89e1c1) by Paul Schoenfelder, 2020-09-03 18:41:48 -0400: build: enable cross-language lto when building compiler


### Repo: lumen/examples


- [f4f50dc](https://github.com/lumen/examples/commit/f4f50dc) by Paul Schoenfelder, 2020-10-24 13:38:52 -0400: fix: missing unwind feature attribute


### Repo: lumen/wasmtime



