{-
Defina uma funcao numEquallMax :: Int -> Int -> Int -> Int onde numEquall-
Max n m p retorna a quantidade de numeros iguais ao maximo entre n;m e p.
-}

maxH :: Int -> Int -> Int -> Int

maxH a b c
    |a>=b && a>=c = a
    |b>=a && b>=c = b
    |c>=a && c>=b = c

numEquallMax :: Int -> Int -> Int -> Int

numEquallMax a b c
    |(a == (maxH a b c) && b ==  (maxH a b c) && c == (maxH a b c)) = 3
    |(a == (maxH a b c) && b ==  (maxH a b c)) || (a == (maxH a b c) && c == (maxH a b c)) || (b ==  (maxH a b c) && c == (maxH a b c)) = 2
    |otherwise = 1