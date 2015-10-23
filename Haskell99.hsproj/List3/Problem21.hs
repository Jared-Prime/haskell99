module List3.Problem21 where
import List2.Problem17  

insertInto :: a -> [a] -> Int -> [a]
insertInto elem list n = insert elem $ mySplit list n
  where
    insert elem (front, back) = front ++ (elem:back)