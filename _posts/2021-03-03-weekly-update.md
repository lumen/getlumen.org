---
layout: post
title: Weekly update up to 2021-03-03
---


Any editor's notes goes here.


## Rust Nightly

The Lumen and EIR repos are updated to be able to use `rust` `nightly-2021-01-29`.  This update allows us to use the newer `Allocator` trait that replaces the older `AllocRef` trait for the `allocator-api` feature that is in active development for Rust and that we depend on for the memory management system.

## Firefox Returns to MacOS

Firefox can be tested on macOS again for WASM after `wasm-bindgen` `0.2.68`.

## Commits 


### Repo: lumen/lumen


- [d494661](https://github.com/lumen/lumen/commit/d494661) by Luke Imhoff, 2021-02-27 20:15:19 -0600: Switch to cargo-play

- [87e9a62](https://github.com/lumen/lumen/commit/87e9a62) by Luke Imhoff, 2021-02-26 12:35:23 -0600: Centralize toolchain into workflow-wide env TOOLCHAIN

- [3b81cb7](https://github.com/lumen/lumen/commit/3b81cb7) by Luke Imhoff, 2021-02-21 11:59:32 -0600: Update web_sys to 0.3.47

- [f234246](https://github.com/lumen/lumen/commit/f234246) by Luke Imhoff, 2021-02-21 11:59:12 -0600: Update parking_lot to 0.11.1

- [43c086a](https://github.com/lumen/lumen/commit/43c086a) by Luke Imhoff, 2021-02-21 11:56:11 -0600: Add chrome back to wasm tests

- [acfb274](https://github.com/lumen/lumen/commit/acfb274) by Luke Imhoff, 2021-02-20 23:45:09 -0600: Don't use `exec --fail-with-error`

- [df9132e](https://github.com/lumen/lumen/commit/df9132e) by Luke Imhoff, 2021-02-20 23:41:56 -0600: Update wasm-bindgen to after 0.2.68 to fix geckodriver issues

- [b5ac612](https://github.com/lumen/lumen/commit/b5ac612) by Luke Imhoff, 2021-02-20 22:15:55 -0600: Use -C to extract to different directory using macOS tar

- [95b0c28](https://github.com/lumen/lumen/commit/95b0c28) by Luke Imhoff, 2021-02-17 22:26:30 -0600: Fix wasm32 allocator

- [01e336b](https://github.com/lumen/lumen/commit/01e336b) by Luke Imhoff, 2021-02-16 22:43:54 -0600: Scope --output and --output-dir to the entire test relative path

- [81694eb](https://github.com/lumen/lumen/commit/81694eb) by Luke Imhoff, 2021-02-16 20:23:15 -0600: Add toolchain to cache key

- [ba99524](https://github.com/lumen/lumen/commit/ba99524) by Luke Imhoff, 2021-02-14 22:01:55 -0600: __lumen_builtin_binary_push_bits_unit

- [4890759](https://github.com/lumen/lumen/commit/4890759) by Luke Imhoff, 2021-02-14 21:06:54 -0600: Move `integer_to_string` and `base` to runtimes

- [0810056](https://github.com/lumen/lumen/commit/0810056) by Luke Imhoff, 2021-02-13 23:56:11 -0600: Fix checking if optional arguments are set

- [6d264e4](https://github.com/lumen/lumen/commit/6d264e4) by Luke Imhoff, 2021-02-13 12:27:09 -0600: Update to libeir_ir@a615a9d41563f2632a0e51bcdb99fba673b380cc

- [4949027](https://github.com/lumen/lumen/commit/4949027) by Luke Imhoff, 2021-02-13 11:03:45 -0600: Port lumen_swap_stack ASM to Linux x86_64

- [0df734f](https://github.com/lumen/lumen/commit/0df734f) by Luke Imhoff, 2021-02-10 10:26:15 -0600: Use label for return address rip-relative offset

- [060d888](https://github.com/lumen/lumen/commit/060d888) by Luke Imhoff, 2021-02-10 10:25:47 -0600: $$ -> $

- [e237ea2](https://github.com/lumen/lumen/commit/e237ea2) by Luke Imhoff, 2021-02-10 10:25:23 -0600: No call site table

- [a8a40bf](https://github.com/lumen/lumen/commit/a8a40bf) by Luke Imhoff, 2021-02-09 22:31:53 -0600: Add .cfi_startproc and .cfi_endproc

- [8ef6293](https://github.com/lumen/lumen/commit/8ef6293) by Luke Imhoff, 2021-02-09 22:17:52 -0600: swap_stack in global_asm

- [63e6f39](https://github.com/lumen/lumen/commit/63e6f39) by Luke Imhoff, 2021-02-09 19:40:10 -0600: Remove feature(vec_remove_item)

- [8378083](https://github.com/lumen/lumen/commit/8378083) by Luke Imhoff, 2021-02-09 19:39:14 -0600: intra_doc_link_resolution_failure -> broken_intra_doc_links

- [8f59d1e](https://github.com/lumen/lumen/commit/8f59d1e) by Luke Imhoff, 2021-01-31 15:31:12 -0600: Remove test that trigger libtest bug

- [ae37df7](https://github.com/lumen/lumen/commit/ae37df7) by Luke Imhoff, 2021-01-31 11:35:31 -0600: Convert tests from AllocRef to Allocator

- [0092293](https://github.com/lumen/lumen/commit/0092293) by Luke Imhoff, 2021-01-31 10:22:38 -0600: Make liblumen_alloc only no_std for build

- [0c2461a](https://github.com/lumen/lumen/commit/0c2461a) by Luke Imhoff, 2021-01-30 20:34:41 -0600: Update eir with hashbrown PR 227 fix

- [9faf17a](https://github.com/lumen/lumen/commit/9faf17a) by Luke Imhoff, 2021-01-29 12:43:16 -0600: Update CI to nightly-2021-01-29

- [5066cb9](https://github.com/lumen/lumen/commit/5066cb9) by Luke Imhoff, 2021-01-29 12:15:28 -0600: cargo fmt

- [ad99643](https://github.com/lumen/lumen/commit/ad99643) by Luke Imhoff, 2021-01-29 11:45:21 -0600: cargo fmt

- [c2bd242](https://github.com/lumen/lumen/commit/c2bd242) by Luke Imhoff, 2021-01-29 11:38:25 -0600: Update AllocRef to Allocator

- [26ea58f](https://github.com/lumen/lumen/commit/26ea58f) by Luke Imhoff, 2021-01-29 11:31:49 -0600: RawMutex::unlock is now unsafe

- [0fa218e](https://github.com/lumen/lumen/commit/0fa218e) by Luke Imhoff, 2021-01-29 10:59:57 -0600: Deny warnings

- [e4d59e9](https://github.com/lumen/lumen/commit/e4d59e9) by Luke Imhoff, 2021-01-29 10:59:33 -0600: Make swap_stack compatible with rust nightly

- [3fc57b7](https://github.com/lumen/lumen/commit/3fc57b7) by Luke Imhoff, 2021-01-29 10:56:06 -0600: Allow ReceiveState::Error to be unused

- [04fd533](https://github.com/lumen/lumen/commit/04fd533) by Luke Imhoff, 2021-01-29 10:47:14 -0600: Fix return of manually written native implements functions

- [c91c10b](https://github.com/lumen/lumen/commit/c91c10b) by Luke Imhoff, 2021-01-29 10:41:59 -0600: Remove unused imports

- [77e7218](https://github.com/lumen/lumen/commit/77e7218) by Luke Imhoff, 2021-01-29 10:35:24 -0600: core::intrinsics::abort is no longer unsafe

- [3511050](https://github.com/lumen/lumen/commit/3511050) by Luke Imhoff, 2021-01-29 10:33:46 -0600: Deny warnings

- [54f32c3](https://github.com/lumen/lumen/commit/54f32c3) by Luke Imhoff, 2021-01-29 10:31:32 -0600: Deny warnings

- [b360168](https://github.com/lumen/lumen/commit/b360168) by Luke Imhoff, 2021-01-29 10:31:20 -0600: Remove unneeded mut

- [25c970f](https://github.com/lumen/lumen/commit/25c970f) by Luke Imhoff, 2021-01-29 10:29:35 -0600: Vec::remove_item has been deprecated, so go back to position, remove

- [35d9e71](https://github.com/lumen/lumen/commit/35d9e71) by Luke Imhoff, 2021-01-29 10:29:01 -0600: _ prefix unused arguments

- [bf6363c](https://github.com/lumen/lumen/commit/bf6363c) by Luke Imhoff, 2021-01-29 10:28:49 -0600: Remove unneeded mut

- [a5047f4](https://github.com/lumen/lumen/commit/a5047f4) by Luke Imhoff, 2021-01-29 10:27:57 -0600: Deny warnings

- [03e37fb](https://github.com/lumen/lumen/commit/03e37fb) by Luke Imhoff, 2021-01-29 10:21:48 -0600: Allow incomplete_feature for specialization

- [2b72c8c](https://github.com/lumen/lumen/commit/2b72c8c) by Luke Imhoff, 2021-01-29 10:13:37 -0600: Don't panic without a fmt

- [8dd6e01](https://github.com/lumen/lumen/commit/8dd6e01) by Luke Imhoff, 2021-01-29 10:05:49 -0600: Deny warnings

- [f4b24d2](https://github.com/lumen/lumen/commit/f4b24d2) by Luke Imhoff, 2021-01-29 09:58:08 -0600: Remove unused imports

- [b0957af](https://github.com/lumen/lumen/commit/b0957af) by Luke Imhoff, 2021-01-29 09:52:30 -0600: Allow context_options to not be read

- [06b61b0](https://github.com/lumen/lumen/commit/06b61b0) by Luke Imhoff, 2021-01-29 09:52:07 -0600: Deny warnings

- [372e071](https://github.com/lumen/lumen/commit/372e071) by Luke Imhoff, 2021-01-29 09:46:32 -0600: Remove unused imports

- [bacfca0](https://github.com/lumen/lumen/commit/bacfca0) by Luke Imhoff, 2021-01-29 09:44:58 -0600: Deny warnings

- [2388d84](https://github.com/lumen/lumen/commit/2388d84) by Luke Imhoff, 2021-01-29 09:43:39 -0600: Remove unused imports

- [151591a](https://github.com/lumen/lumen/commit/151591a) by Luke Imhoff, 2021-01-29 09:43:29 -0600: Deny warnings

- [c941745](https://github.com/lumen/lumen/commit/c941745) by Luke Imhoff, 2021-01-29 09:41:24 -0600: _ prefix unused argumetns

- [7f3b120](https://github.com/lumen/lumen/commit/7f3b120) by Luke Imhoff, 2021-01-29 09:41:10 -0600: Remove unused variable

- [fe97abb](https://github.com/lumen/lumen/commit/fe97abb) by Luke Imhoff, 2021-01-29 09:38:32 -0600: Use must_use returns

- [f88ad75](https://github.com/lumen/lumen/commit/f88ad75) by Luke Imhoff, 2021-01-29 09:36:06 -0600: Allow constant builders to be unused

- [07fe12f](https://github.com/lumen/lumen/commit/07fe12f) by Luke Imhoff, 2021-01-29 09:35:38 -0600: Remove unused types

- [6f26572](https://github.com/lumen/lumen/commit/6f26572) by Luke Imhoff, 2021-01-29 09:32:01 -0600: Allow FFI functions to be unused

- [17d4ded](https://github.com/lumen/lumen/commit/17d4ded) by Luke Imhoff, 2021-01-29 09:29:45 -0600: Remove unused imports

- [98a9c47](https://github.com/lumen/lumen/commit/98a9c47) by Luke Imhoff, 2021-01-29 09:28:51 -0600: Allow functon reference to be used

- [11e8dea](https://github.com/lumen/lumen/commit/11e8dea) by Luke Imhoff, 2021-01-29 09:26:43 -0600: Ignore linker `diagnostics` not being read

- [e336a7d](https://github.com/lumen/lumen/commit/e336a7d) by Luke Imhoff, 2021-01-27 20:26:47 -0600: Non-asm is unsupported in naked functions

- [abbed28](https://github.com/lumen/lumen/commit/abbed28) by Luke Imhoff, 2021-01-11 18:08:06 -0600: Switch to eirproject/eir master

- [1d174e7](https://github.com/lumen/lumen/commit/1d174e7) by Luke Imhoff, 2021-01-11 18:00:20 -0600: optin_builtin_traits -> auto_traits

- [e81cc4a](https://github.com/lumen/lumen/commit/e81cc4a) by Luke Imhoff, 2021-01-11 17:22:13 -0600: Update parking_lot to 0.11.1 and lock_api 0.4.2

- [37dcc5f](https://github.com/lumen/lumen/commit/37dcc5f) by Luke Imhoff, 2021-01-11 16:54:53 -0600: AllocErr -> AllocError

- [6f9c13b](https://github.com/lumen/lumen/commit/6f9c13b) by Luke Imhoff, 2021-01-10 21:17:16 -0600: Update liblumen_arena


### Repo: eirproject/eir



### Repo: lumen/examples


- [ae03d07](https://github.com/lumen/examples/commit/ae03d07) by Luke Imhoff, 2021-02-28 13:18:28 -0600: Update num-bigint to 0.3.1

- [3447995](https://github.com/lumen/examples/commit/3447995) by Luke Imhoff, 2021-02-21 11:59:11 -0600: Update parking_lot to 0.11.1


### Repo: lumen/wasmtime



