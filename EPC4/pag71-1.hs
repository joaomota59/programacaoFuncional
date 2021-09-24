{-
Defina uma funcao para converter letras minusculas em maiusculas e que retorne o proprio
caractere se a entrada nao for um caractere minusculo.
-}

upper :: Char -> Char

upper c 
    |c == 'a' = 'A'
    |c == 'b' = 'B'
    |c == 'c' = 'C'
    |c == 'd' = 'D'
    |c == 'e' = 'E'
    |c == 'f' = 'F'
    |c == 'g' = 'G'
    |c == 'h' = 'H'
    |c == 'i' = 'I'
    |c == 'j' = 'J'
    |c == 'k' = 'K'
    |c == 'l' = 'L'
    |c == 'm' = 'M'
    |c == 'n' = 'N'
    |c == 'o' = 'O'
    |c == 'p' = 'P'
    |c == 'q' = 'Q'
    |c == 'r' = 'R'
    |c == 's' = 'S'
    |c == 't' = 'T'
    |c == 'u' = 'U'
    |c == 'v' = 'V'
    |c == 'w' = 'W'
    |c == 'x' = 'X'
    |c == 'y' = 'Y'
    |c == 'z' = 'Z'
    |otherwise = c