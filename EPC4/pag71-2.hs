{-
Defina uma funcao charParaInt :: Char -> Int que converte um digito em seu valor
(por exemplo, '8' em 8). O valor de um caractere nao digito deve ser 0 (zero).
-}

charParaInt :: Char -> Int

charParaInt c
    |c == '1' = 1
    |c == '2' = 2
    |c == '3' = 3
    |c == '4' = 4
    |c == '5' = 5
    |c == '6' = 6
    |c == '7' = 7
    |c == '8' = 8
    |c == '9' = 9
    |otherwise = 0