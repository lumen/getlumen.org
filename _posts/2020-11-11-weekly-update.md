---
layout: post
title: Weekly update up to 2020-11-11
---


Not much changed in terms of code pushed to GitHub this week, other than updating our LLVM repo to pick up a large swath of recent changes. Those changes will be released as part of an overall Lumen release in the next week or so, we're waiting on a couple other things before doing so: nightly Rust picking up the ability to parameterize standard library types with an allocator, and a set of changes by Paul to move a bunch of our C++ code into Rust now that there is enough FFI support to do most common actions in MLIR without needing to write C++ bindings.


## Commits 


### Repo: lumen/lumen


- [ca9088a](https://github.com/lumen/lumen/commit/ca9088a) by Paul Schoenfelder, 2020-11-01 17:37:47 -0500: docs: fix build instructions in readme


### Repo: lumen/llvm-project

Commits are omitted here, since the only commits made by us were rebased on top of the latest LLVM master, and are not new.

### Repo: lumen/wasmtime



