---
layout: post
title: Weekly update up to 2021-02-02
---


Any editor's notes goes here.

## Implement binary comprehensions in `libeir_syntax_erl`

The EIR Erlang frontend has supported list comprehensions for some time, but binary comprehensions have remained unimplemented due to rare usage.

Implementing this turned out to be more challenging than anticipated, due to patterns in binary comprehensions working in a fundamentally different way than any other patterns in the language. Binary comprehensions need to allow for "structural matches" on binaries, a pattern that matches on the length, but not on guards or constants.

## Fix source span errors in `eir`

A bug around source span handling in EIR affected large parts of the standard library. (https://github.com/lumen/lumen/issues/597)

This is fixed by falling back to a slightly less sophisticated handling of source spans when macros are used. This isn't expected to affect error messages negatively in any significant way.

## Commits 


### Repo: lumen/lumen


- [8e109a9](https://github.com/lumen/lumen/commit/8e109a9) by Luke Imhoff, 2021-01-08 22:54:18 -0600: Fix typo in mnesia_kernel_sup imports

- [9e862a3](https://github.com/lumen/lumen/commit/9e862a3) by Luke Imhoff, 2021-01-08 22:51:40 -0600: mix lumen.otp.log.parse


### Repo: eirproject/eir


- [51d3ba8](https://github.com/eirproject/eir/commit/51d3ba8) by Hans Elias B. Josephsen, 2021-01-27 12:19:50 +0100: Implement binary comprehensions

- [e669f88](https://github.com/eirproject/eir/commit/e669f88) by Hans Elias B. Josephsen, 2021-01-12 13:37:12 +0100: Dump of work

- [f0af441](https://github.com/eirproject/eir/commit/f0af441) by Hans Elias B. Josephsen, 2021-01-04 10:42:12 +0100: Update to latest nightly

- [39375b6](https://github.com/eirproject/eir/commit/39375b6) by Hans Elias B. Josephsen, 2021-01-05 10:34:02 +0100: Hopefully fix all source span errors.

- [7843e65](https://github.com/eirproject/eir/commit/7843e65) by Luke Imhoff, 2021-01-30 19:28:32 -0600: Use Allocator and Global from std::alloc


### Repo: lumen/wasmtime



