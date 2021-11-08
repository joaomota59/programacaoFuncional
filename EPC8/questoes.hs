{-
Desenvolva um programa em haskell (sem prelude):
a) Que tenha como entrada um numero inteiro n
b) Que tenha como saída uma tupla contendo uma lista dos n primeiros numeros da sequencia de fibbonaci e a somatória dos numeros pares dessa lista.



Faça o cálculo da expressão [a+b | a<-[1..4], b<-[2..4], a<b]
-}
impar, par :: Int -> Bool
impar 0 = False
impar n = par (n-1)

par 0 = True
par n = impar (n-1)

fibo :: Int -> Int
fibo n
    |n == 1 = 0
    |n == 2 = 1
    |otherwise = fibo (n-1) + fibo (n-2)

fiboTupla :: Int -> ([Int],Int)
fiboTupla n = 
    let result = [fibo num | num <- [1..n]] 
    in (result,sum [num | num<-result, par num ])


expressao :: [Int]
expressao = [a+b | a<-[1..4], b<-[2..4], a<b]
{-
a = 1 e b = 2, 1<2, True, expressao = [3]
a = 1 e b = 3, 1<3, True, expressao = [3,4]
a = 1 e b = 4, 1<4, True, expressao = [3,4,5]
a = 2 e b = 2, 2<2, False, expressao = [3,4,5]
a = 2 e b = 3, 2<3, True, expressao = [3,4,5,5]
a = 2 e b = 4, 2<4, True, expressao = [3,4,5,5,6]
a = 3 e b = 2, 3<2, False, expressao = [3,4,5,5,6]
a = 3 e b = 3, 3<3, False, expressao = [3,4,5,5,6]
a = 3 e b = 4, 3<4, True, expressao = [3,4,5,5,6,7]
a = 4 e b = 2, 4<2, False, expressao = [3,4,5,5,6,7]
a = 4 e b = 3, 4<3, False, expressao = [3,4,5,5,6,7]
a = 4 e b = 4, 4<4, False, expressao = [3,4,5,5,6,7]
-}