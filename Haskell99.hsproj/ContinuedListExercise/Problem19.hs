module ContinuedListExercise.Problem19 where
import ContinuedListExercise.Problem17

rotate :: [a] -> Int -> [a]
rotate (x:xs) n = repaste (mySplit (x:xs) n)
  where
    repaste (x, y) = y ++ x