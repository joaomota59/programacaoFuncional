{-
Defina a funcao and :: [Bool] -> Bool que retorna a conjuncao da lista. Por exemplo,
and[e1; e2; : : : en] = e1&&e2&&: : :&&en.
-}

andH :: [Bool] -> Bool
andH [ ] = True
andH (x:xs) = x && andH xs