{-
Como a funcao membro :: [Int] -> Int -> Bool pode ser definida usando compreensao
de listas e um teste de igualdade?
-}

membro :: [Int] -> Int -> Bool
membro lista num = or [True | numero <-lista, numero == num]