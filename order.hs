list :: [Int]
list = [5, 1, 9, 2, 6]

get_smiller :: [Int] -> Int
get_smiller [x] = x
get_smiller (x:xs) | (x < get_smiller xs) = x
                   | otherwise = get_smiller xs
-- 5 < get_smiller [1, 9, 2, 6] 5 < 1 ? False 1
-- 1 < get_smiller [9, 2, 6] 1 < 2 ? True
-- 9 < get_smiller [2, 6]   -> 2
-- 2 < get_smiller [6]      -> 2 < 6 => 2
-- 2 < 6 ? True

remove_smiller :: [Int] -> [Int]
remove_smiller [] = []
remove_smiller (x:xs) | (x == get_smiller(x:xs)) = xs
                      | otherwise = (x:remove_smiller xs)

-- [5, 1, 9, 2, 6] 5 == 1 ? False
-- [5, remove_smiller [1, 9, 2, 6]]
-- [5, [9, 2, 6]] x:xs -> [5, 9, 2, 6]

get_sort :: [Int] -> [Int] -> [Int]
get_sort list_sorted [] = list_sorted
get_sort list_sorted (x:xs) = get_sort (list_sorted++[get_smiller (x:xs)]) (remove_smiller (x:xs))

sort_exe :: [Int] -> [Int]
sort_exe [] = []
sort_exe l = get_sort [] l
