module ContinuedListExercise.Problem11 where
import ListExercise.Problem4
import ListExercise.Problem9

data ListEncoding a = Single a | Multiple (Int, a) deriving Show

encodeList :: (Eq a) => [a] -> [ListEncoding a]
encodeList = map encode . pack
              where
                encode [x] = Single x
                encode list = Multiple(myLength list, head list)