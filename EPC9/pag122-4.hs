{-
Defina a funcao ocorreUmaVez :: [Int] -> [Int] que retorna a lista de numeros que
ocorrem exatamente uma vez em uma lista. Por exemplo, ocorreUmaV ez[2; 4; 2; 1; 4] = [1].
-}

numOcorre :: (Eq t) => [t] -> t -> Int
numOcorre lista item = sum [1 | i <-lista , item == i]

conjuntoL :: [Int] -> [Int]

conjuntoL (a:x) listaAux = a :

ocorreUmaVez :: [Int] -> [Int]
