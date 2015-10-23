module List1.Problem10 where
import List1.Problem9
import List1.Problem4

-- Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E

data ListEncoding a = Encode(Int, a) deriving Show

encodeList :: (Eq a) => [a] -> [ListEncoding a]
encodeList =  map encode . pack
                where
                  encode list = Encode(myLength list, (head list))
