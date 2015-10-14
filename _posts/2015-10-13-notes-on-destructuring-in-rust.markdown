---
layout: post
title: "find the K'th element"
date: 2015-10-13 00:00:00
categories:
  - destructuring
  - reading notes
  - lessons
  - rust
preview: "given a thing, take it apart and assign local references to each of the things' pieces"
---

- the simple Haskell introduction sneaks in destructuring. simply, a destructured value is, "given a thing, take it apart and assign local references to each of the things' pieces"
- so pattern matching allows us, without committing to some explicit collection of local variable assignments, to say, “given a thing that comes apart into pieces like this, do such-and-such"
- since we’re working with a static type system in a compiled language, the compiler can check, exhaustively even, whether a destructuring is valid
- the code samples in this article show us how Rust implements patterns as well as the added difficulty of what to do when the compiler cannot know, maybe only exhaustively, whether a destructuring can occur. in these cases, the programmer must supply a “guard"
- with guards, however, we’re encroaching on the imperative habit of augmenting functions with a serious of conditional statements, potentially leading to bloat
- I did find the last two examples about destructuring function arguments and in for loops really cool
- so some questions remain:
    - does an imperative programmer coming to Rust have a cheat when it comes to thinking functionally? are guards a feature, a crutch, both, or a symptom of some deeper similarity between patterns and conditionals? (this question is valid for Haskell as well, since both have guards)
    - what really does it mean for a compiler to exhaustively check a program? how does that happen? (I’m really interested in an explanation beyond, “well, it compiles…”)

reference: [Piotr Zolnierek: Destructuring in Rust](https://pzol.github.io/getting_rusty/posts/20140417_destructuring_in_rust/)
