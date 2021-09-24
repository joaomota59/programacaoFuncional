{-
Defina uma funcao replica :: String -> Int -> String que toma uma string e um
numero natural n e retorna n copias da string, todas juntas. Se n for 0, o resultado deve
ser a string vazia (), se n for 1, retorna a propria string.
-}

replica :: String -> Int -> String

replica a b
    |b == 0 = ""
    |b == 1 = a
    |otherwise = a ++ (replica (a) (b-1))