module ListExercise.Problem9 where
-- Pack consecutive duplicates of list elements into sublists
-- using the simple solution from https://wiki.haskell.org/99_questions/Solutions/9
pack :: (Eq a) => [a] -> [[a]]
pack []  = []
pack [x] = [[x]]
-- here we're introduced to using tbe backticks to place a function call into infix position
pack (x:xs) = if x `elem` (head (pack xs))
              then (x:(head (pack xs))):(tail (pack xs))
              else [x]:(pack xs)