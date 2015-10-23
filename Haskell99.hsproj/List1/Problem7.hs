module List1.Problem7 where
  
-- flatten a nested list structure
-- but what is a nested list structure? we'll have to make one
-- this reads: "define a new data type called 'World' that consists of a data type Turtle *or* a data type AllTheWayDown of a data type 'World', which consists of a data type Turtle..."
-- caveat: every turtle must be of the same type
data World a = Turtle a | AllTheWayDown [World a]
-- to flatten a World, returning a standard list
myFlatten :: World a -> [a]
-- first match a single Turtle, replacing its contents into a standard list
myFlatten (Turtle x) = [x]
-- then match AllTheWayDown, calling concatMap on its contents with a recursive call to this function
myFlatten (AllTheWayDown x) = concatMap myFlatten x
