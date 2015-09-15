---
layout: post
title: "find the K'th element"
date: 2015-09-15 00:00:00
categories:
  - lessons
  - haskell
preview: find the K'th element in a list
---

1. tools: no new ones
2. resources:
	- as always, [StackOverflow](http://stackoverflow.com/questions/2191294/what-do-the-parentheses-signify-in-xxs-when-pattern-matching) is handy. the explanations for Haskell tend to be on the heady side, tho
3. tricks / techniques
	- infix operator `!!` allows us to index into a list, solves the problem of the day nicely
	- a question about the type signature led us to talk about [currying](https://wiki.haskell.org/Currying)
4. solutions:

- straightforward use of the infix:

<pre><code>elementAt :: [a] -> Int -> a
elementAt x i = x !! (i-1)</code></pre>

remember, the exercise wanted it a 1 indexed lookup!

- and currying example:

<pre><code>findCurried = elementAt [1..100]
findCurried 6 -- 6
findCurried 97 -- 97</code></pre>
