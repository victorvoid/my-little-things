andL :: Bool -> Bool -> Bool
andL False _ = False
andL _ False = False
andL True True = True