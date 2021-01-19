---
layout: post
title: Partial update up to 2021-01-05
---

This covers some of the work on the Lumen project. Returning from the holidays has us all a bit scattered. So while we haven't summarized all the work we'll put out what information we have for now.


## Commits 


### Repo: eirproject/eir

There is loads of work in progress, but only thing pushed up here is an update to latest nighly. This includes an update of all our forked dependencies to support the latest version of the `AllocRef` trait.

This change will enable us to update the Lumen master repo to nightly as well.

- [9a037bf](https://github.com/eirproject/eir/commit/9a037bf) by Hans Elias B. Josephsen, 2020-12-04 14:45:27 +0100: Update to latest nightly


### Repo: lumen/llvm-project


- [76b4df35c](https://github.com/lumen/llvm-project/commit/76b4df35c) by Paul Schoenfelder, 2020-12-09 11:35:10 -0500: [lumen] allow specifying base class in mlir typedefs

- [ee43fb7dd](https://github.com/lumen/llvm-project/commit/ee43fb7dd) by Paul Schoenfelder, 2020-12-09 11:34:39 -0500: [lumen] expand mlir capi with additional useful functions

- [96ad2496d](https://github.com/lumen/llvm-project/commit/96ad2496d) by Paul Schoenfelder, 2020-11-11 04:27:40 -0500: [lumen] Remove clang and runtimes from default build

- [c721483ce](https://github.com/lumen/llvm-project/commit/c721483ce) by Paul Schoenfelder, 2020-11-10 20:44:41 -0500: [lumen] Build releases without debug info, size is too large otherwise

- [6300453ff](https://github.com/lumen/llvm-project/commit/6300453ff) by Paul Schoenfelder, 2020-08-29 22:28:55 -0400: [lumen] build script/dockerfile updates

- [881dd48b9](https://github.com/lumen/llvm-project/commit/881dd48b9) by Paul Schoenfelder, 2020-08-29 17:37:30 -0400: [lumen] build release with debug info

- [5d1f8fa30](https://github.com/lumen/llvm-project/commit/5d1f8fa30) by Paul Schoenfelder, 2020-08-26 17:17:04 -0400: [lumen] Lower gc and gc-leaf-function function attributes

- [543a7e581](https://github.com/lumen/llvm-project/commit/543a7e581) by Paul Schoenfelder, 2020-08-26 17:16:37 -0400: [lumen] Port PlaceSafepoints pass to new pass manager

- [27b091022](https://github.com/lumen/llvm-project/commit/27b091022) by Paul Schoenfelder, 2020-08-26 17:15:54 -0400: [lumen] Build shared libraries by default on macOS

- [bb254dcd9](https://github.com/lumen/llvm-project/commit/bb254dcd9) by Paul Schoenfelder, 2020-07-30 23:52:38 -0400: [lumen] fix validation of landingpad op

- [624197617](https://github.com/lumen/llvm-project/commit/624197617) by Paul Schoenfelder, 2020-04-16 14:35:23 -0400: [lumen] fix lowering of llvm.invoke to LLVM IR

- [dd3c80df4](https://github.com/lumen/llvm-project/commit/dd3c80df4) by Paul Schoenfelder, 2020-03-07 15:09:19 -0500: [lumen] support tail calls and function attributes on calls

- [5320f2bdd](https://github.com/lumen/llvm-project/commit/5320f2bdd) by Paul Schoenfelder, 2020-03-07 15:08:34 -0500: [lumen] add support for thread-local globals

- [8faddef10](https://github.com/lumen/llvm-project/commit/8faddef10) by Paul Schoenfelder, 2019-12-18 12:06:03 -0500: [lumen] expose functions in MCSubtargetInfo for accessing features/cpus

- [64aae6583](https://github.com/lumen/llvm-project/commit/64aae6583) by Paul Schoenfelder, 2019-11-25 01:17:20 -0500: [lumen] add build scripts for distribution

