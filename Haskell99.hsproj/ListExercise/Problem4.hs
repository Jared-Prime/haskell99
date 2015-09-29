module ListExercise.Problem4 where

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