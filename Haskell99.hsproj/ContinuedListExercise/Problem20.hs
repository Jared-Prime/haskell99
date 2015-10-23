module ContinuedListExercise.Problem20 where
import ContinuedListExercise.Problem16
import ListExercise.Problem3

isolate :: [a] -> Int -> (a, [a])
isolate list n = ((elementAt list n), (dropElem list n))