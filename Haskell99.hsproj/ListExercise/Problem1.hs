module ListExercise.Problem1 where
  -- Find the last element of a list
myLast :: [a] -> a
myLast []     = error "Nothing in list!"
myLast [x]    = x
myLast (_:xs) = myLast xs