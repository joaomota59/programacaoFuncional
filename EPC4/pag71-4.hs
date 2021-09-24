{-
Defina uma funcao romanoParaString :: Char -> String que converte um algarismo
romano em sua representacao em Portugues. Por exemplo, romanoParaString ′V ′ =
\cinco′′.
-}

romanoParaString :: Char -> String

romanoParaString c
    |c == 'I' = "um"
    |c == 'V' = "cinco"
    |c == 'X' = "dez"
    |c == 'L' = "cinquenta"
    |c == 'C' = "cem"
    |c == 'D' = "quinhentos"
    |c == 'M' = "mil"