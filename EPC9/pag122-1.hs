{-
Mostre todos os passos realizados na chamada iSort[2, 8, 1].
-}

ins :: Int -> [Int] -> [Int]
ins a [ ] = [a]
ins a (b:y)
    |a <= b = a : (b : y)
    |otherwise = b : ins a y

iSort :: [Int] -> [Int]
iSort [ ] = [ ]
iSort (a:x) = ins a (iSort x)

{-
iSort [2,8,1]
a = 2 e x = [8,1]
começar de dentro para fora:

ins 2 (iSort (ins 8 (isort (ins 1 iSort []))) )

parte mais interna:
    a = 1 e lista vazia, entao cai na primeira condicao a [] = [a],
    ins 1 [] = [1]
entao fica:
    ins 2 (isort (ins 8 (isort [1] )))

parte mais interna: 
    ins 8 (isort [1])
    a = 8
    b = 1
    y = []
    8 <= 1, False, entao,
    1 : ins 8 [],
    ins 8 [] = [8], entao,
    1:[8] = [1,8]

entao fica:
    ins 2 (isort ([1,8]))
parte mais interna:
    isort [1,8]
    a = 1
    x = [8]
    isort [1,8] = ins 1 iSort [8]
parte mais interna:
    iSort [8]
    a = 8
    x = []
    iSort [8] = ins 8 [] = [8]
voltando para a linha 44: ins 1 [8]
    a = 1
    b = 8
    1<=8, True, entao
    ins 1 [8] = 1: 8 : []
    isort = ins 1 [8] = [1,8]
parte mais externa:
    ins 2 (isort ([1,8])) = ins 2 [1,8]
    a = 2
    b = 1
    y = [8]
    2<=1, False, entao
    1 : ins 2 [8]
    ins 2 [8]
    a = 2
    b = 8
    y = []
    2<=8, True,entao
    ins 2 [8] = 2 : 8: [] = [2,8]
    concatenando o resultado com 1 : ins 2 [8]
    1 : [2,8] = [1,2,8]

Resultado = [1,2,8]


-}