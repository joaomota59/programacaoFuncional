{-
De uma definicao da funcao pertence, vista anteriormente, usando a funcao numOcorre,
do item anterior
-}
numOcorre :: (Eq t) => [t] -> t -> Int
numOcorre lista item = sum [1 | i <-lista , item == i]

pertence :: (Eq t) => [t] -> t -> Bool
pertence lista item = (numOcorre lista item) > 0