{-
Calcule somaPar [(2,3), (96, -7)], passo a passo.
-}

somaDois :: (Int,Int) -> Int
somaDois (a,b) = a + b

somaPar2 :: [(Int,Int)] -> [Int]
somaPar2 [ ] = []
somaPar2 (x:xs) = somaDois x : somaPar2 xs



somaParAux :: [(Int,Int)]  -> String
somaParAux [ ] = "" 
somaParAux (x:xs) = show(x)++" = "++show(somaDois x) ++ "\n" ++ somaParAux xs


somaPar :: [(Int,Int)] -> IO()
somaPar (x) = putStr ((somaParAux x) ++ show(somaPar2 x) ++ "\n")