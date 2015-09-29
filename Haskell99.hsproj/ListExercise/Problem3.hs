module ListExercise.Problem3 where
-- Find the K'th element of a list. The first element in the list is number 1

-- here's a naive solution, using the index operator `!!`
elementAt :: [a] -> Int -> a
elementAt x n  = x !! (n - 1)

elementAtWithoutInfix :: [a] -> Int -> a
elementAtWithoutInfix (x:_) 1 = x
elementAtWithoutInfix (_:xs) i = elementAtWithoutInfix xs (i -1)
elementAtWithoutInfix _ _ = error "out of bounds"