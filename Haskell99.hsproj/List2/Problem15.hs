module List2.Problem15 where

replicateList :: Int -> [a] -> [a]
replicateList = concatMap . replicateElement
                  where
                    replicateElement 0 _ = []
                    replicateElement 1 x = [x]
                    replicateElement n x = (x:(replicateElement (n - 1) x))
