higher :: [Int] -> Int
higher [x] = x
higher (x:xs) | (x > higher xs) = x
              | otherwise = higher xs
