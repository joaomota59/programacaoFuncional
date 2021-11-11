{-
2. Defina uma função numOcorre :: [t] -> t -> Int, onde numOcorre l s retorna o
número de vezes que o ítem s aparece na lista l.
-}

numOcorre :: (Eq t) => [t] -> t -> Int
numOcorre lista item = sum [1 | i <-lista , item == i]