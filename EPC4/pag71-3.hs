{-
Defina uma funcao imprimeDigito :: Char -> String que converte um digito em sua
representacao em portugues. Por exemplo, '5' deve retornar \cinco".
-}

imprimeDigito :: Char -> String

imprimeDigito c
    |c == '1' = "um"
    |c == '2' = "dois"
    |c == '3' = "tres"
    |c == '4' = "quatro"
    |c == '5' = "cinco"
    |c == '6' = "seis"
    |c == '7' = "sete"
    |c == '8' = "oito"
    |c == '9' = "nove"
    |c == '0' = "zero"