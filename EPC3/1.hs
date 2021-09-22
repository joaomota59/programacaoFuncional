{-
Dê a definicao de funcao todosQuatroIguais do tipo Int -> Int -> Int -> Int -> Bool
que dá o resultado True se seus quatro argumentos forem iguais.
-}

todosquatroiguais :: Int -> Int -> Int -> Int -> Bool
todosquatroiguais a b c d = ((a == b) && (b == c) && (c == d))