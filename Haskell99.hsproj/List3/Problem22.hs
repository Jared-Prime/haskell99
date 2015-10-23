module List3.Problem22 where
import List2.Problem17  

rangeExclusive :: [a] -> Int -> Int -> [a]
rangeExclusive list n m = drop n (take m list)

rangeInclusive :: [a] -> Int -> Int -> [a]
rangeInclusive list n m = drop (n - 1) (take (m + 1) list)