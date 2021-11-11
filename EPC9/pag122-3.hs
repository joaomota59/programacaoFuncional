{-
De uma definicao da funcao pertence, vista anteriormente, usando a funcao numOcorre,
do item anterior
-}
numOcorre lista item = sum [1 | i <-lista , item == i]
pertence lista item = (numOcorre lista item) > 0