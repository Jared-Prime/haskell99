module List1.Problem8 where
-- Eliminate consecutive duplicates of list elements
uniq :: (Eq a) => [a] -> [a]
uniq list = acc_uniq list []
              where
                acc_uniq [] acc  = acc
                acc_uniq [x] acc = acc ++ [x]
                acc_uniq (x:xs) acc
                  | x == (head xs) = acc_uniq xs acc
                  | otherwise      = acc_uniq xs (acc ++ [x])
