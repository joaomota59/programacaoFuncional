{-
Dado um numero natural n > 0, implemente em Haskell uma funcao que informe se n é,
ou não, um número primo.
Referencia = pag 32 / questao 9 /EPC 01
-}

aux:: Int ->Int -> Bool
aux m n
    |(mod m n) /= 0 = aux (m) (n-1)
    |n==1 = True
    |(mod m n) == 0 = False

primo :: Int -> Bool

primo n
    |n == 1 = False
    |otherwise = aux (n) (n-1)