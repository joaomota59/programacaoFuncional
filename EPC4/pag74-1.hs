{-
De uma definicao de uma funcao tabeladeFatoriais :: Int -> Int -> String que
mostre, em forma de tabela, os fatoriais dos inteiros de m ate n, inclusive de ambos.
-}


replica :: String -> Int -> String
replica a b
    |b == 1 = a
    |otherwise = a ++ (replica (a) (b-1)) 

replicaAux :: String -> Int -> String
replicaAux a b
    |b == 0 = ""
    |b == 1 = " "
    |otherwise = replica a b

fatorial :: Int -> Int
fatorial z
    |z == 0 = 1
    |z == 1 = 1
    |otherwise = z*(fatorial (z-1))

aux :: Int -> Int ->Int-> String

aux m n sizeMax
    |m == n = "|\tfat("++show(m)++") = "++show(fatorial(m))++(replicaAux " " (sizeMax - (length (show(m)++(show(fatorial m))))))++"\t|\n"
    |otherwise = "|\tfat("++show(m)++") = "++show(fatorial(m)) ++(replicaAux " " (sizeMax - (length (show(m)++(show(fatorial m))))))++"\t|\n" ++ (aux (m-1) (n) (sizeMax))


tabeladeFatoriais :: Int -> Int -> IO()
tabeladeFatoriais m n =  putStr (aux m n (length (show(m)++show(fatorial m))))