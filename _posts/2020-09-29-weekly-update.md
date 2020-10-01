---
layout: post
title: Weekly update up to 2020-09-29
---


Any editor's notes goes here.


## Heading to group changes under

Short paragraph about what the change is supposed to achieve

- optional bulleted list of things done in this area for this period, if needed

## Binary handling
* Changes to `libeir_syntax_erl`, binary handling was totally busted before, this changeset hopefully gets it more correct. Primarily changes the handling of the `<<"">>` syntax feature, and how binary specifiers are applied to it.
* Changes to compiler codegen, `liblumen_alloc`, and runtime built-ins to support fixes for `/utf8` binaries in EIR.

## Runtime built-ins

* Built-in bitwise operators that did not have `badarith` handling now defer to the `liblumen_otp` version that do.
  * `bnot/1`
  * `bor/2`
  * `bsl/2`
  * `bsr/2`

## `liblumen_otp` testing

* `erlang/otp` testing is improved by running Autoconf and `configure` before testing, so that more derived `.hrl` files can be used.
  * `inet_dns_record_adts.hrl` is made for `lib/kernel` testing
* More `liblumen_otp` Rust unit tests are converted to Erlang integration tests
  * `erlang`
    * Bitwise operators
      * `bnot/1`
      * `bor/2`
      * `bsl/2`
      * `bsr/2`
      * `bxor/2`
    * `cancel_timer/1`
    
## `libeir_syntax_erl` code span handling with macros
Previously, macro usage caused incorrect source spans to be inserted into the token stream. This causes an assertion to fail. This issue has been fixed for simple macros.

Changes since last time according to git logs: 


Repo: lumen/lumen


- [2c58ee4](https://github.com/lumen/lumen/commit/2c58ee4) by Luke Imhoff, 2020-09-28 11:20:59 -0500: Integration tests for erlang:cancel_timer/1

- [ff0fb71](https://github.com/lumen/lumen/commit/ff0fb71) by Luke Imhoff, 2020-09-28 10:28:08 -0500: Integration tests for erlang:bxor/2

- [ef5f423](https://github.com/lumen/lumen/commit/ef5f423) by Luke Imhoff, 2020-09-28 10:37:56 -0500: Autoconf and configure lumen/otp before testing

- [cc6570a](https://github.com/lumen/lumen/commit/cc6570a) by Luke Imhoff, 2020-09-28 08:35:57 -0500: make inet_dns_record_adts.hrl for kernel

- [9e102d1](https://github.com/lumen/lumen/commit/9e102d1) by Luke Imhoff, 2020-09-24 12:20:31 -0500: EIR update

- [2455020](https://github.com/lumen/lumen/commit/2455020) by Luke Imhoff, 2020-09-24 11:05:08 -0500: Integration tests for erlang:bsr/2

- [ba9cb13](https://github.com/lumen/lumen/commit/ba9cb13) by Luke Imhoff, 2020-09-24 11:03:14 -0500: Fix bsl/2 test due to typo

- [a283817](https://github.com/lumen/lumen/commit/a283817) by Luke Imhoff, 2020-09-24 11:01:03 -0500: Use liblumen_otp erlang:bsr/2 for __lumen_builtin_math.bsr

- [f8064f5](https://github.com/lumen/lumen/commit/f8064f5) by Luke Imhoff, 2020-09-24 00:24:52 -0500: Work-around bug of binary being used outside fun and inside it

- [bcdb0b9](https://github.com/lumen/lumen/commit/bcdb0b9) by Luke Imhoff, 2020-09-23 23:27:43 -0500: Push bytes to binaries due to EIR updates

- [6b1bf8a](https://github.com/lumen/lumen/commit/6b1bf8a) by Luke Imhoff, 2020-09-23 15:48:21 -0500: Update eir

- [9e8e513](https://github.com/lumen/lumen/commit/9e8e513) by Luke Imhoff, 2020-09-23 15:14:51 -0500: Integration tests for erlang:bsl/2

- [383ead6](https://github.com/lumen/lumen/commit/383ead6) by Luke Imhoff, 2020-09-23 15:14:06 -0500: Use liblumen_otp erlang:bsl/2 for __lumen_builtin_math.bsl

- [4a9bd9a](https://github.com/lumen/lumen/commit/4a9bd9a) by Luke Imhoff, 2020-09-23 08:34:49 -0500: Integration tests for erlang:bor/2

- [06db745](https://github.com/lumen/lumen/commit/06db745) by Luke Imhoff, 2020-09-23 08:34:35 -0500: Use liblumen_otp erlang:bor/2 for __lumen_builtin_math.bor

- [e55c4d0](https://github.com/lumen/lumen/commit/e55c4d0) by Luke Imhoff, 2020-09-22 22:33:01 -0500: Integration tests for erlang:bnot/1


Repo: eirproject/eir


- [e23779e](https://github.com/eirproject/eir/commit/e23779e) by Hans Elias B. Josephsen, 2020-09-24 19:00:41 +0200: Remove debug print

- [0cf790f](https://github.com/eirproject/eir/commit/0cf790f) by Hans Elias B. Josephsen, 2020-09-24 12:14:25 +0200: Fix source spans on simple macros

- [3992935](https://github.com/eirproject/eir/commit/3992935) by Hans Elias B. Josephsen, 2020-09-23 18:09:22 +0200: Fix interpreter

- [f93a31e](https://github.com/eirproject/eir/commit/f93a31e) by Hans Elias B. Josephsen, 2020-09-23 17:13:41 +0200: Fix binary handling in frontend

- [a66fd40](https://github.com/eirproject/eir/commit/a66fd40) by Paul Schoenfelder, 2020-08-18 17:45:38 -0400: feat: add some missing apis to diagnostics crate


Repo: lumen/wasmtime



