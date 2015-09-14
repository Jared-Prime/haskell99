-- Find the last element of a list
myLast :: [a] -> a
myLast []     = error "Nothing in list!"
myLast [x]    = x
myLast (_:xs) = myLast xs

-- Find the last but one element of a list
lastButOne :: [a] -> a
-- looks like this matches an array of size 2, but not sure...
lastButOne [x,_]  = x
lastButOne (_:xs) = lastButOne xs

lastButOne' :: [a] -> a
-- our first example of composition:
-- given two functions `f` and `g`, the composite function, `f . g` is the result of applying an argument `g x`, and then taking the result of that application as the arguement for `f`
-- hence, `f . g (x)` is `f(g(x))`
-- therefore, this implementation says,
-- take the initial part of the array, then find the last element
lastButOne' = myLast . init