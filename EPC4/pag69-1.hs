{-
De a definicao de uma funcao nAnd :: Bool -> Bool -> Bool que da o resultado True,
exceto quando seus dois argumentos sao ambos True.
-}

nAnd :: Bool -> Bool -> Bool

nAnd a b = not (a && b)