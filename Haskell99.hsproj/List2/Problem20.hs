module List2.Problem20 where
import List2.Problem16
import List1.Problem3

isolate :: [a] -> Int -> (a, [a])
isolate list n = ((elementAt list n), (dropElem list n))