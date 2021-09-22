{-
De uma definicao para a funcao quantosIguais aplicada a tres entradas inteiras e que
retorna quantas delas sao iguais.
-}

quantosIguais :: Int -> Int -> Int -> Int

quantosIguais a b c 
    |(a==b) && (b==c) = 3
    |(a/=b) && (b/=c) && (c/=a)= 0
    |otherwise = 1

