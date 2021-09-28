{-
De uma definicao em Haskell da funcao fat que calcula o fatorial de n, onde n é um inteiro
positivo.
Referencia: pag 27
-}

fat :: Int -> Int
fat n
    |n==0 = 1
    |n>0 = n*fat(n-1)