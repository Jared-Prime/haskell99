module List2.Problem16 where

dropElem :: [a] -> Int -> [a]
dropElem [] _ = []
dropElem (x:xs) n
  | n == 0    = xs
  | otherwise = x:(dropElem xs (n - 1))

-- I'm actualy suprised that this converges
-- I suppose the first pattern match ensures that, if we reach the end of the list, we return
dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery (x:xs) n
  | n == 0    = dropEvery xs (n + 1)
  | otherwise = x:(dropEvery xs (n - 1))
