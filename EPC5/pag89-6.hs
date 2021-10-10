{-
Defina a funcao concat :: [[Int]] -> [Int] que concatena uma lista de listas de in-
teiros transformando-a em uma lista de inteiros. Por exemplo, concat[[3; 4]; [2]; [4; 10]] =
[3; 4; 2; 4; 10].

-}

concatH :: [[Int]] -> [Int]
concatH [ ] = []
concatH (x:xs) = x ++ concatH xs