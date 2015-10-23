module List2.Problem17 where
  
mySplit :: [a] -> Int -> ([a], [a])
mySplit [] _ = ([],[])
-- here we have some syntax `@` which says, gimme list l and deconstruct into x head and xs tail
mySplit l@(x:xs) n
  -- read the final comment first. read it? okay. now we'll use the result of our recursive call to cons the head on the first pair of the result and keep the tail
  | n > 0     = (x:ys, zs)
  -- once n equals zero or less, return an empty list and the complete list (this will be the top of our stack during the recursive calls)
  | otherwise = ([], l)
  where
    -- and the trick here places the declaration for the ys and zs as the result of the recusive call on our tail
    (ys,zs) = mySplit xs (n - 1)
