size_list :: [a] -> Int
size_list [] = 0
size_list (x:xs) = 1 + size_list xs
