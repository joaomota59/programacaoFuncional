{-
De a definicao da funcao todosQuatroIguais usando a deficao da funcao todosIguais,
vista na subsecao anterior.
-}

todosIguais :: Int -> Int -> Int -> Bool
todosIguais n m p = (n == m) && (m == p)

todosquatroiguais :: Int -> Int -> Int -> Int -> Bool
todosquatroiguais a b c d = (todosIguais a b c) && (todosIguais b c d)