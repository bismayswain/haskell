-- Find the last elemet of the list

mylast::[a]->a
mylast []= error "Put a list you Idiot"
mylast [y] = y
mylast (_:xs) = mylast xs

-- Find the last but one element of the list

mySecondLast:: [a] -> a
mySecondLast []= error "Put a list you idiot"
mySecondLast [x]= error "Put a bigger list you idiot"
mySecondLast [x1,x2]= x1
mySecondLast (x:xs)= mySecondLast xs

-- Find the element at kth position. Arguments are a list and k.
-- The first element of the list is number 1

elementAt :: [a] -> Int -> a
elementAt [] _ = error "There are no elements in the list"
elementAt [x] 1 = x
elementAt (x:xs) 1 = x
elementAt (x:xs) k = elementAt xs (k-1)

-- (**) Eliminate consecutive duplicates of list elements.
-- If a list contains repeated elements they should be replaced
-- with a single copy of the element. The order of the elements
-- should not be changed.
compress :: (Eq a) => [a]->[a]
compress x = foldr (\a b -> if a==(head b) then b else a:b) [last x] x

-- (**) Pack consecutive duplicates of list elements into sublists.
--  If a list contains repeated elements they should be placed in
-- separate sublists.

pack :: (Eq a) => [a] -> [[a]]
pack x = foldr func [] x
    where func x []     = [[x]]
          func x (y:xs) =
              if x == (head y) then ((x:y):xs) else ([x]:y:xs)

-- Run-length encoding of a list. Use the result of problem P09 to
-- implement the so-called run-length encoding data compression method.
-- Consecutive duplicates of elements are encoded as lists (N E) where
-- N is the number of duplicates of the element E.

encode x = foldr func [] x
    where func x [] = [(1,x)]
          func x (y:ys) = if (snd y)==x then ((((fst y)+1),x):ys) else ((1,x):y:ys)









---------------------
