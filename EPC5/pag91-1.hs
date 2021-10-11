type Trio = (Int,Int,Int)

somaTrio :: Trio -> Int
somaTrio (x,y,z) = x + y + z

somaTriplas :: [Trio] -> Int
somaTriplas [] = 0
somaTriplas (x:xs) = somaTrio x + somaTriplas xs