module ContinuedListExercise.Problem12 where
import ContinuedListExercise.Problem11

-- three things to note in this execercise:
--   1. the pattern matching looks exactly like the type construction
--   2. concatMap allows us to map over a list and concat the results
--   3. replicate allows us to, er, replicate n times any x item
-- so for the solution, we return any (Single x) as [x] and replicate any (Multiple n x) n times with x
decode :: [ListEncoding a] -> [a]
decode = concatMap decoder
            where
              decoder (Single x) = [x]
              decoder (Multiple n x) = replicate n x