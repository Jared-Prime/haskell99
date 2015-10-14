---
layout: post
title: Notes on "Haskell Pattern Matching"
date: 2015-10-13 00:00:00
categories:
  - reading notes
  - lessons
  - haskell
preview: programming languages are not just a formalism
---

- programming languages are not just a formalism: "they are the means by which the user and the computer interact and in their choices support certain modes of thought"
- this might be more generally true: a spoken language is not just a formalism of social interactions; a spoken language is the means by which social interactions occur, a choice of language supports certain interactions; a notation is not just a formalism of mathematical truths; a notation system is the means by which mathematical truths are expressed, and a choice of notation supports certain expressions, etc.
- imperative programming, Devin says, "has the fortunate side effect of making programming more generally accessible” but at the cost of having certain thoughts about the program
- statically typed languages (like Haskell), enable the programmer "to sit down and divide the functions into responsibilities and types. This makes programming a much more careful and thought out process."
- But what specifically does Haskell provide that makes a less imperative “mode of thought” available? Devin’s answer is pattern-matching. "patterns [do] what if statements would do in other languages”. Instead of explicitly laying out the branches of a program, the programmer supplies the patterns which correspond to a unique branch
- this explanation leaves some questions unanswered:

    - what’s really different about patterns versus conditional branches? is the programmer really not thinking about various contexts and conditions within her code’s runtime?
    - how does Haskell implement pattern matching? can we be assured that, under the hood, we’re not really faced with a spaghetti of conditional statements?
    - do patterns always provide more productivity than conditionals? if not, under what circumstances do they not?

reference: http://blog.devinmcgloin.com/programming/2015/07/07/Haskell/
