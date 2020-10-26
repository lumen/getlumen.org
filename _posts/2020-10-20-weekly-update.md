---
layout: post
title: Weekly update up to 2020-10-20
---

A brief update this week.

## `liblumen_otp` BIFs

Add stubs for BIFs needed for linking `seq_trace.erl` in OTP.  The stubs often emulate the non-sequential-trace state or only do argument validation with actual argument operations left `unimplemented!()`.  Support for sequential tracing in Lumen will be based on user demand.

  * `module_loaded/1`
  * `seq_trace/2`
  * `seq_trace_info/1`
  * `seq_trace_print/2`
  * `system_flag/2`
  * `system_info/1`

## Commits 


### Repo: lumen/lumen


- [7108621](https://github.com/lumen/lumen/commit/7108621) by Luke Imhoff, 2020-10-15 12:27:32 -0500: erlang:seq_trace/2

- [d2b0631](https://github.com/lumen/lumen/commit/d2b0631) by Luke Imhoff, 2020-10-13 11:20:39 -0500: erlang:seq_trace_print/2

- [edf1985](https://github.com/lumen/lumen/commit/edf1985) by Luke Imhoff, 2020-10-13 09:26:35 -0500: erlang:system_flag/2

- [aee0b9d](https://github.com/lumen/lumen/commit/aee0b9d) by Luke Imhoff, 2020-10-12 21:36:11 -0500: erlang:seq_trace_info/1

- [6208afe](https://github.com/lumen/lumen/commit/6208afe) by Luke Imhoff, 2020-10-12 20:27:05 -0500: erlang:seq_trace_print/1

- [08f0469](https://github.com/lumen/lumen/commit/08f0469) by Luke Imhoff, 2020-10-12 19:50:33 -0500: erlang:system_info/1

- [a2add66](https://github.com/lumen/lumen/commit/a2add66) by Luke Imhoff, 2020-10-12 13:30:11 -0500: erlang:module_loaded/1

- [f156890](https://github.com/lumen/lumen/commit/f156890) by Luke Imhoff, 2020-10-14 10:02:56 -0400: test: add tests for globally dynamic calls

- [1dc18c4](https://github.com/lumen/lumen/commit/1dc18c4) by Paul Schoenfelder, 2020-10-14 10:01:24 -0400: Revert "Implement Callee::GlobalDynamic"
