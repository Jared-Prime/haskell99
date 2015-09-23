-- Find the last element of a list
myLast :: [a] -> a
myLast []     = error "Nothing in list!"
myLast [x]    = x
myLast (_:xs) = myLast xs

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

-- Find the K'th element of a list. The first element in the list is number 1

-- here's a naive solution, using the index operator `!!`
elementAt :: [a] -> Int -> a
elementAt x n  = x !! (n - 1)

elementAtWithoutInfix :: [a] -> Int -> a
elementAtWithoutInfix (x:_) 1 = x
elementAtWithoutInfix (_:xs) i = elementAtWithoutInfix xs (i -1)
elementAtWithoutInfix _ _ = error "out of bounds"

-- find the length of a list
myLength :: [a] -> Int
myLength []  = 0
myLength [_] = 1
myLength (_:xs) = 1 + myLength xs

-- with an accumulator, allowing tail optimization
myLength' :: [a] -> Int
myLength' xs = acc_Length xs 0
                      where
                        acc_Length [] n = n
                        acc_Length (_:xs) n = acc_Length xs (n + 1)

-- reverse a list
myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) = myReverse xs ++ [x]

-- the prelude definition makes use of fold
-- see the notes on this powerful function: https://wiki.haskell.org/Fold
standardReverse :: [a] -> [a]
standardReverse = foldl (flip (:)) []


-- detect a palindrome
isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == (reverse xs)

-- some recursion
isPalindrome' []  = True
isPalindrome' [_] = True
isPalindrome' xs = (head xs) == (last xs) && (isPalindrome' $ init $ tail xs)