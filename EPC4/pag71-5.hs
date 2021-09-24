{-
Defina uma funcao emTresLinhas :: String -> String -> String -> String que toma
tres strings como argumento e retorna uma unica string mostrando as tres em linhas se-
paradas.
-}

emTresLinhas :: String -> String -> String -> IO()

emTresLinhas a b c = putStr(a++"\n"++b++"\n"++c++"\n")