-- Given a list of integers, calculate the sum of their squares
-- sumSquare :: [a] -> a
sumSquare x = sum [y*y | y <- x]

-- In a similar way to the function length, show how the library function
-- replicate :: Int → a → [a ] that produces a list of identical elements can
-- be defined using a list comprehension. For example:
-- replicate 3 True
-- [True, True, True ]
replicateNew :: Int -> a -> [a]
replicateNew x y = [y| _<-[1..x]]

-- Given list of triplets, give pythagorean triplets

-- pyths :: Num a => [(a,a,a)] -> [(a,a,a)]
pyths x = [(x,y,z)| (x,y,z)<-x , x*x+y*y==z*z]
