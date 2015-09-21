---
layout: post
title: "reverse a list"
date: 2015-09-21 00:00:00
categories:
  - lessons
  - haskell
preview: Reverse a list
---

Let's resume after a long weekend! Our next exercise follows very closely on our previous one in its basic "shape". The type signature of course is different:

<pre><code>myReverse :: [a] -> [a]</code></pre>

There are, again, two base cases:

```
myReverse []  = []
myReverse [x] = [x]
```

and then the recursion

```
myReverse (x:xs) = myReverse xs ++ x
```

Our function for the recursive step is the "cons" inline operator `++` which allows us to take two lists, and append the one on the other. This is not the most efficient operation for this exercise (follow-up task: why is that the case?), but it further demonstrates a recursive principle we will be relying on in the future.