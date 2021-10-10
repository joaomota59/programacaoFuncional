{-
Dada a definicao da funcao dobra
dobra :: [Int] -> [Int]
dobra [ ] = [ ]
dobra (a:x) = (2 * a) : dobra x
Calcule dobra [3,4,5] passo a passo.
-}


dobra :: [Int] -> [Int]
dobra [ ] = [ ]
dobra (a:x) = (2 * a) : dobra x

{-
Resposta:
    apenas colocar dobra [2,4,6]
    após entrar com ghci e compilar
-}