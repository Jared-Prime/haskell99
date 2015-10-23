module List2.Problem14 where

-- here's a direct solution, taking advantage of cons (:)
duplicate :: [a] -> [a]
duplicate [] = []
duplicate [x] = [x, x]
duplicate (x:xs) = (x:(x:duplicate(xs)))
