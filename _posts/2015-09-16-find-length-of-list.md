---
layout: post
title: "find the length of a list"
date: 2015-09-16 00:00:00
categories:
  - lessons
  - haskell
preview: Find the number of elements of a list
---

We have used recursion before in these exercises, but this time we see the use of (a) base case(s) in the implementation.

First, our function type will resemble that of the prelude's `length` function:

<pre><code/>myLength :: [a] -> Int</code></pre>

Next, the base cases will be that of an empty list

```
myLength [] = 0
```

followed by the singleton case

```
myLength [x] = 1
```

Lastly, we rely on these two base cases during our recursive definition

```
myLength (_:xs) = 1 + myLength xs
```