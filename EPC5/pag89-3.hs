somaLista :: [Int] -> Int
somaLista [ ] = 0
somaLista (x:xs) = x + somaLista xs

dobra :: [Int] -> [Int]
dobra [ ] = [ ]
dobra (a:x) = (2 * a) : dobra x

{-
colocar no ghci
somaLista [30, 2, 1, 0]

dobra [0]

"cafe" ++ "com " ++ "leite"
-}


