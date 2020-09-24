---
layout: post
title: The first regular update
---

As Lumen has had its first release we aim to keep everyone following the project posted on what's new. This is a summary and some detail on what has happened since the Lumen release. We are likely to make a new release within a week or so, it will depend on when some changes land but that's the idea. Until then we hope you enjoy following along.

## `lumen compile` quality-of-life changes

- Requires less setup before use: the parent directories of `--output-dir` and `--output` are created automatically.
- Accepts multiple input files and directories instead of just one, make it easier to compile multiple applications together.

## `liblumen_alloc` memory allocation

- Processes will allocate `HeapFragment` instead of returning `Alloc` error. This protects BIFs from having to deal with re-entrancy and makes the process not panic because of Out-of-memory until codegen GC is integrated.

## `liblumen_otp` testing

- More unit tests in Rust have been converted to integration tests in Erlang being compiled by `lumen`.
- Testing compilation on all of `erlang/otp` has begun. Any issues related to those tests are tags [`erlang/otp`](https://github.com/lumen/lumen/issues?q=is%3Aissue+is%3Aopen+label%3Aerlang%2Fotp).

## `eir` fixes to erlang frontend

Luke's testing of the compiler on OTP has revealed several issues with the erlang frontend. Some choice examples of things that have been fixed:

  - Fix scoping rules when assignments are done in case expressions.
  - Add support for several module attributes.
  - The `include_lib` directive should check regular include path as well as codepath. Fix semantics and improve error reporting.
  - In cases where binaries are constructed from strings with specifiers, things were handled wrong (things like `<<"abcæøå"/utf8>>` would generate latin1 instead of utf8, codepoints above the basic multilingual plane would get truncated). Both fixed these issues and improve error reporting.

## Commits

### Repo: lumen/lumen

- [e55c4d0](https://github.com/lumen/lumen/commit/e55c4d0) by Luke Imhoff, 2020-09-22 22:33:01 -0500: Integration tests for erlang:bnot/1

- [fd1bb09](https://github.com/lumen/lumen/commit/fd1bb09) by Luke Imhoff, 2020-09-22 13:18:16 -0500: Integration tests for erlang:binary_part/3 including badarg

- [0ef6d7c](https://github.com/lumen/lumen/commit/0ef6d7c) by Luke Imhoff, 2020-09-22 11:05:37 -0500: Integration tests for erlang:binary_part/2 including badarg

- [dec90c2](https://github.com/lumen/lumen/commit/dec90c2) by Luke Imhoff, 2020-09-21 13:20:49 -0500: Add badges for lumen/otp workflows

- [6e339ab](https://github.com/lumen/lumen/commit/6e339ab) by Luke Imhoff, 2020-09-21 13:04:49 -0500: Separate internal and external integration tests

- [df2bd5d](https://github.com/lumen/lumen/commit/df2bd5d) by Luke Imhoff, 2020-09-21 12:31:01 -0500: lumen/otp compile testing using liblumen_otp

- [5562fb7](https://github.com/lumen/lumen/commit/5562fb7) by Luke Imhoff, 2020-09-17 14:52:28 -0500: Allow compilation command to be customized in tests

- [8df57a8](https://github.com/lumen/lumen/commit/8df57a8) by Luke Imhoff, 2020-09-16 08:43:18 -0500: Update eir dependencies

- [bf01ff4](https://github.com/lumen/lumen/commit/bf01ff4) by Luke Imhoff, 2020-09-16 08:38:58 -0500: Integration tests for band/2

- [fb265e6](https://github.com/lumen/lumen/commit/fb265e6) by Luke Imhoff, 2020-09-16 08:37:13 -0500: Use liblumen_otp erlang:band/2 for __lumen_builtin_math.band

- [677c4eb](https://github.com/lumen/lumen/commit/677c4eb) by Luke Imhoff, 2020-09-15 21:34:32 -0500: Integration tests for atom_to_list/1 including badarg

- [a9afc33](https://github.com/lumen/lumen/commit/a9afc33) by Luke Imhoff, 2020-09-15 21:21:23 -0500: Integration tests for atom_to_binary/2 including badarg

- [19d99df](https://github.com/lumen/lumen/commit/19d99df) by Luke Imhoff, 2020-09-15 21:03:21 -0500: Fix new_map_from_hash_map layout being wrong size

- [12ea1b6](https://github.com/lumen/lumen/commit/12ea1b6) by Luke Imhoff, 2020-09-15 14:01:26 -0500: Integration tests for apply/2

- [c9ba7d4](https://github.com/lumen/lumen/commit/c9ba7d4) by Luke Imhoff, 2020-09-15 11:49:03 -0500: Integration tests for append_element/2

- [91d2cf1](https://github.com/lumen/lumen/commit/91d2cf1) by Luke Imhoff, 2020-09-15 11:13:58 -0500: Integration tests for andalso/2

- [8988340](https://github.com/lumen/lumen/commit/8988340) by Luke Imhoff, 2020-09-15 10:59:44 -0500: Integration tests for and/2

- [9d555fb](https://github.com/lumen/lumen/commit/9d555fb) by Luke Imhoff, 2020-09-14 13:56:40 -0500: Support multiple input paths to lumen compile

- [f586be4](https://github.com/lumen/lumen/commit/f586be4) by Luke Imhoff, 2020-09-14 11:21:40 -0500: Create all parent directories of --output

- [f9a242e](https://github.com/lumen/lumen/commit/f9a242e) by Luke Imhoff, 2020-09-14 10:42:22 -0500: Create all parent directories before emitting a file

- [97ab6a9](https://github.com/lumen/lumen/commit/97ab6a9) by Luke Imhoff, 2020-09-14 09:12:31 -0500: Remove -l flags in integration tests

- [99ef980](https://github.com/lumen/lumen/commit/99ef980) by Luke Imhoff, 2020-09-04 18:47:57 -0500: Integration tests for erlang:+/2

- [1d0483d](https://github.com/lumen/lumen/commit/1d0483d) by Luke Imhoff, 2020-09-04 18:46:41 -0500: Use erlang:+/2 for __lumen_builtin_math.add

- [ede9d2a](https://github.com/lumen/lumen/commit/ede9d2a) by Luke Imhoff, 2020-09-04 18:45:23 -0500: Error immediately if left or right number infix operator operand is undecodable

- [27e92d1](https://github.com/lumen/lumen/commit/27e92d1) by Luke Imhoff, 2020-09-04 11:50:29 -0500: Integration tests for abs/1

- [c7fb448](https://github.com/lumen/lumen/commit/c7fb448) by Luke Imhoff, 2020-09-03 12:01:58 -0500: Use spawn-chain/cli demo as regression test for #571

- [03d332f](https://github.com/lumen/lumen/commit/03d332f) by Luke Imhoff, 2020-09-03 11:47:51 -0500: Fix unused warnings in minimal scheduler.rs

- [bfdbdc1](https://github.com/lumen/lumen/commit/bfdbdc1) by Luke Imhoff, 2020-09-03 11:47:02 -0500: Allocate a fragment if allocating on process fails in builtin_malloc

### Repo: eirproject/eir

- [5b624a6](https://github.com/eirproject/eir/commit/5b624a6) by Hans Elias B. Josephsen, 2020-09-22 13:14:37 +0200: Support named inline types in map and tuple types

- [12f2eaa](https://github.com/eirproject/eir/commit/12f2eaa) by Hans Elias B. Josephsen, 2020-09-22 13:10:00 +0200: Support zero length lists in export and other attributes

- [e2a0965](https://github.com/eirproject/eir/commit/e2a0965) by Hans Elias B. Josephsen, 2020-09-22 12:56:04 +0200: Do not create a new scope for case expression arguments

- [2bee72b](https://github.com/eirproject/eir/commit/2bee72b) by Hans Elias B. Josephsen, 2020-09-22 12:43:08 +0200: Support on_load attribute in parser

- [44e39c2](https://github.com/eirproject/eir/commit/44e39c2) by Hans Elias B. Josephsen, 2020-09-22 12:38:02 +0200: Support removed attribute

- [d28689f](https://github.com/eirproject/eir/commit/d28689f) by Hans Elias B. Josephsen, 2020-09-22 11:30:05 +0200: Silently discard no_native compile attribute

- [903945b](https://github.com/eirproject/eir/commit/903945b) by Hans Elias B. Josephsen, 2020-09-22 11:22:42 +0200: Allow multiline strings, allow string in deprecated attribute

- [8117938](https://github.com/eirproject/eir/commit/8117938) by Hans Elias B. Josephsen, 2020-09-22 08:46:35 +0200: Change function typespecs to match erlang docs

- [e16fd2d](https://github.com/eirproject/eir/commit/e16fd2d) by Hans Elias B. Josephsen, 2020-09-18 15:31:58 +0200: Merge branch 'master' of github.com:hansihe/core_erlang

- [fee2391](https://github.com/eirproject/eir/commit/fee2391) by Hans Elias B. Josephsen, 2020-09-18 15:31:22 +0200: Fix number and constant handling in erlang frontend

- [94e4622](https://github.com/eirproject/eir/commit/94e4622) by Hans Elias B. Josephsen, 2020-09-16 13:55:04 +0200: Fix semantics for include_lib directive, better diagnostics

- [8bf4edd](https://github.com/eirproject/eir/commit/8bf4edd) by Hans Elias B. Josephsen, 2020-09-15 18:00:36 +0200: Improve diagnostics on includes

### Repo: lumen/examples

- [22d93c2](https://github.com/lumen/examples/commit/22d93c2) by Luke Imhoff, 2020-09-03 11:51:24 -0500: spawn-chain/cli demo

- [ea97e0d](https://github.com/lumen/examples/commit/ea97e0d) by Luke Imhoff, 2020-09-02 20:43:56 -0500: spawn-chain -> spawn-chain/wasm

