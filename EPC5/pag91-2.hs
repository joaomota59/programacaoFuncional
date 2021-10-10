{-
Defina uma funcao somaPar que de como resultado a lista das somas dos elementos de
uma lista de pares de numeros.
-}

somaDois :: (Int,Int) -> Int
somaDois (a,b) = a + b

somaPar :: [(Int,Int)] -> [Int]
somaPar [] = []
somaPar (x:xs) = somaDois (x) : somaPar xs

