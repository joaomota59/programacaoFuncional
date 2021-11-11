{-
Defina a funcao ocorreUmaVez :: [Int] -> [Int] que retorna a lista de numeros que
ocorrem exatamente uma vez em uma lista. Por exemplo, ocorreUmaVez[2, 4, 2, 1, 4] = [1].
-}

numOcorre :: (Eq t) => [t] -> t -> Int
numOcorre lista item = sum [1 | i <-lista , item == i]

conjuntoL :: [Int] -> [Int] -> [Int]
conjuntoL [] _ = []
conjuntoL (a:x) listaAux
    |(a `elem` listaAux) = conjuntoL x listaAux
    |otherwise = a : conjuntoL x (a:listaAux) 

ocorreUmaVez :: [Int] -> [Int]
ocorreUmaVez lista = 
    let result = (conjuntoL lista [])
    in [i | i <- result, (numOcorre lista i) == 1]
