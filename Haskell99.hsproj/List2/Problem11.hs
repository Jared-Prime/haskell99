module List2.Problem11 where
import List1.Problem4
import List1.Problem9

data ListEncoding a = Single a | Multiple Int a deriving Show

encodeList :: (Eq a) => [a] -> [ListEncoding a]
encodeList = map encode . pack
              where
                encode [x] = Single x
                encode list = Multiple (myLength list) (head list)
