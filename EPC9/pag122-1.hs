ins :: Int -> [Int] -> [Int]
ins a [ ] = [a]
ins a (b:y)
    |a <= b = a : (b : y)
    |otherwise = b : ins a y

iSort :: [Int] -> [Int]
iSort [ ] = [ ]
iSort (a:x) = ins a (iSort x)

main :: IO ()
main =  do
putStr "Sum of x + y = "
print(iSort [2,8,1])

{-
iSort chama ins passa a=2 e x = [8,1] para ins
a = 2
b = 8
y = [1]
a <= b, True, entao lista = [2] : ins [8,1]
a = 8
b = 1
a<=b, False, entao  [2]:[1]:[]

-}