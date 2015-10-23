module List1.Problem6 where
  

-- detect a palindrome
isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == (reverse xs)

-- some recursion
isPalindrome' []  = True
isPalindrome' [_] = True
isPalindrome' xs = (head xs) == (last xs) && (isPalindrome' $ init $ tail xs)
