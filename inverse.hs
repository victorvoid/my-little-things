inv_list :: [t] -> [t]
inv_list [] = []
inv_list (x:xs) = inv_list(xs) ++ [x]
  -- [1, 2, 3] [2, 3]  ++ 1
  -- [2, 3] [3] ++ 2
  -- [3] [] ++ 3
  -- []
  -- [3, 2, 1]
