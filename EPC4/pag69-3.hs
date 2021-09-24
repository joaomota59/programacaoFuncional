{-
Como voce simplicicaria a funcao
funny x y z
|x > z = True
|y >= x = False
|otherwise = True
-}

{-
R =  apenas removendo a condição x>z
-}

--Exemplo
funny :: Int -> Int -> Int -> Bool

funny x y z
    |y >= x = False
    |otherwise = True