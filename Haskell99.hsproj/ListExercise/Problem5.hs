module ListExercise.Problem5 where

-- reverse a list
myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) = myReverse xs ++ [x]

-- the prelude definition makes use of fold
-- see the notes on this powerful function: https://wiki.haskell.org/Fold
standardReverse :: [a] -> [a]
standardReverse = foldl (flip (:)) []