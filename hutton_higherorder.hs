-- Define list comprehension in terms of map and filter
-- comprehense xs = map f (filter p xs)

-- map using foldr
mapNew f x = foldr (\a b -> (f a):b) [] x

--filter using foldr
filterNew f x = foldr (\a b -> if (f a) then a:b else b) [] x
