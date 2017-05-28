compare_list :: [Int] -> [Int] -> Bool
compare_list [] [] = True
compare_list _  [] = False
compare_list [] _  = False
compare_list (a:b) (c:d) | (a == c)  = compare_list b d
                         | otherwise = False
