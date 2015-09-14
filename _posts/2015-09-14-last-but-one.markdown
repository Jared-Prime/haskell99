---
layout: post
title: "last but one"
date: 2015-09-14 00:00:00
categories:
  - lessons
  - haskell
preview: find the second to last item in a list
---

1. tools:
	- try the #Haskell channel on IRC
	- look up [lambdabot](https://wiki.haskell.org/Lambdabot); we'll start using this tool by next session to get quick help
	- if you do not have a working installation by now, ask a human for help!
2. resources:
	- as mentioned above, the #Haskell IRC channel is supposed to be a friendly place
3. tricks / techniques
	- functional composition: given two functions `f` and `g`, you can "compose" ("pipe", "chain", "connect") them together with the `.` operator. What this means is that `f . g x` will take the input `x`, apply it as an argument to the function `g` then take the result of that application as an argument to the function `f`. In English, "eff after gee of x". This is a cornerstone of mathematics, without which very little is doable.
4. solutions:

- using composition:

<pre><code>lastButOne :: [a] -> a
lastButOne = last . init</code></pre>

- direct pattern matching:
<pre><code>lastButOne' :: [a] -> a
lastButOne' [x,_] = x
lastButOne' (_:xs) = lastButOne xs
</code></pre>