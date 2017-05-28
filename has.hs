has :: [Int] -> Int -> Bool
has [] _ = False
has (x:xs) n | x == n = True
             | otherwise = has xs n
