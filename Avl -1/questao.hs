
{--
(2,5)Defina a função lógica coincidencia, xnor :: [Bool] -> Bool.
Execute para [False,True,True, False]
--}

todosVerdadeiros :: [Bool] -> Bool
todosVerdadeiros lista = and [i | i <- lista] == True
todosFalsos :: [Bool] -> Bool
todosFalsos lista = or [x | x <- lista] == False

xnor :: [Bool] -> Bool
xnor lista = (todosVerdadeiros lista) || (todosFalsos lista)


{--
(2,5)Defina uma função que classifique imc(tabela) a partir da tupla (peso, altura), imc :: [(float,float)] -> [String]
Execute para [(82.5,1.65), (62.0,1.170), (58.5,1.60)]

TabelaIMC	CLASSIFICAÇÃO
MENOR QUE 18,5		MAGREZA
ENTRE 18,5 E 24,9	NORMAL
ENTRE 25,0 E 29,9	SOBREPESO
ENTRE 30,0 E 39,9	OBESIDADEII
MAIOR QUE 40,0		OBESIDADEIII
--}


classif :: Float -> String
classif valor
    |valor<18.5 = "MAGREZA"
    |valor>=18.5 && valor<=24.9 = "NORMAL"
    |valor>=25.0 && valor<=29.9 = "SOBREPESO"
    |valor >=30.0 && valor<=39.9 = "OBESIDADEII"
    |otherwise = "OBESIDADEIII"


imc :: [(Float,Float)] -> [String]
imc vet = [classif (peso/(altura*altura)) |(peso,altura)<-vet]

{--
(2,5)Defina uma função (usando ZF) que retorne os números multiplos de x e y num intervalo de n a m.
Execute para x=4, y=3, n=10, m=100
--}

mult :: Int -> Int -> Int -> Int -> [Int]
mult x y n m = [i | i <- [n..m] , (mod i x) == 0, (mod i y) == 0]

{--
(2,5)Defina uma função (usando map) que retorne uma tupla de quantidades de vogais em uma String na ordem (a,e,i,o,u).
Execute para seu próprio nome (aluno)
--}
vogalA :: Char -> Int
vogalA c
    |c == 'a' = 1
    |otherwise = 0
vogalE :: Char -> Int
vogalE c
    |c == 'e' = 1
    |otherwise = 0
vogalI :: Char -> Int
vogalI c
    |c == 'i' = 1
    |otherwise = 0
vogalO :: Char -> Int
vogalO c
    |c == 'o' = 1
    |otherwise = 0
vogalU :: Char -> Int
vogalU c
    |c == 'u' = 1
    |otherwise = 0

quantNome :: String -> (Int,Int,Int,Int,Int)
quantNome letra = (sum (map vogalA letra), sum(map vogalE letra), sum(map vogalI letra), sum(map vogalO letra), sum(map vogalU letra)) 