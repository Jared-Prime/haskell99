module ContinuedListExercise.Problem18 where

slice :: [a] -> Int -> Int -> [a]
slice list i k = [x | (x, j) <- zip list [1..k], i <= j]