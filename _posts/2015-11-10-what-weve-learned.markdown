---
layout: post
title: What We've Learned So Far
date: 2015-11-10 00:00:00
categories:
  - reading notes
  - lessons
  - haskell
preview: a recap on the first quarter of our journey
---

# What We’ve Learned So Far

we’ve actually been exposed to tons of interesting language design features

- functions are first-class objects
    - functions are values which can be used in exactly the same ways as any other sort of value
- functions from the functional programmers' view:
    - more abstractly, functions are expressions
    - more abstractly still, all expressions, including what we'd typically call data in nonfunctional languages, are functions... code is data and data is code!

```haskell
addTwo :: (Num a) => a -> a
addTwo = a + 2

myFunc = addTwo
```

- code gets evaluated rather than executed
    - evaluation occurs upon need (lazy)

```haskell
sprint myFunc
— myFunc = _
— not function expression not evaluated until called
```

- expressions have referential transparency
    - immutable data
    - idempotent function evaluation
    - immutability & idempotency => no side-effects
- recursion feels natural

```haskell
myFunc = \x -> x + 3
— compilation error! this already has a binding
```

- static types
    - types are checked at compile time
    - type data gets erased during compilation
    - you might hear that this means a compiled program is a “true” program — but we haven’t learned quite enough to say what this means yet

```haskell
myFunc “cat"
— compilation error!
```

- algebraic data types
    - we can build a new data type by specifying the type constructor and its data constructors
    - the data constructor can be thought of as an initialization function for now; but it is actually much more powerful
    - eg., data constructors allow us to deconstruct a data type in order to conduct pattern matching

- pattern matching
    - brought to you in part by algebraic data types
    - static type system

```haskell
data MyData = Construct a | OtherConstruct a b

deconstruct :: MyData -> a
deconstruct Construct x = x
deconstruct OtherConstruct x y = (x, y)
```

- composition
    - we can chain functions together very easily

```haskell
addFour :: (Num a) => a -> a
addFour x = addTwo (addTwo x)
```

but there's a function for that!

```haskell
addFour' :: (Num a) => a -> a
addFour = addTwo . addTwo
```

- higher order functions
    - since functions are first class, we can pass functions into and return out of other functions
    - functions that take or give functions are called higher order functions
    - composition is an example

```haskell
(.) :: (b -> c) -> (a -> b) -> (a -> c)
(.) g f = \x -> f ( g x )
```

- anonymous functions, aka lambdas
    - binds an expression locally to a function body

```haskell
addTwo' = \x -> x + 2
```

What's next for us? We'll split into three tracks:

- any day, pick two of:
    - project: complete a homework assignment from CIS194
    - reading: read and annotate lecture notes from CIS194, or another source. be prepared to present (<5mins)
    - exercise: pick next in sequence from Haskell99

(Math homework: Verify that choose-2-from-3 offers 3 possible combinations, order independent)
