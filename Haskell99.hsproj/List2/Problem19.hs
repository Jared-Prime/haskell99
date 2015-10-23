module List2.Problem19 where
import List2.Problem17

rotate :: [a] -> Int -> [a]
rotate (x:xs) n = repaste (mySplit (x:xs) n)
  where
    repaste (x, y) = y ++ x