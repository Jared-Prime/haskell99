module List1.Problem2 where
import List1.Problem1
-- Find the last but one element of a list
lastButOne :: [a] -> a
lastButOne [x,_] = x
lastButOne (_:xs)  = lastButOne xs

lastButOneWithComposition :: [a] -> a
-- our first example of composition:
-- given two functions `f` and `g`, the composite function, `f . g` is the result of applying an argument `g x`, and then taking the result of that application as the arguement for `f`
-- hence, `f . g (x)` is `f(g(x))`
-- therefore, this implementation says,
-- take the initial part of the array, then find the last element
lastButOneWithComposition = myLast . init
