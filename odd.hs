oddL :: [Int] -> Bool
oddL [] = True
oddL (x:xs) | (mod x 2 /= 0) = False
            | otherwise = oddL xs
