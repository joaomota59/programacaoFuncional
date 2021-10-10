{-
Defina uma funcao unzip :: [(Int, Int)] -> ([Int], [Int]) que transforma uma
lista de pares em um par de listas. Sugestao: defina antes as funcoes unZipLeft, unZipRight
:: [(Int, Int)] -> [Int], onde unZipLeft [(2,4), (3,5), (4,78)] = [2,3,4]
e unZipRight [(2,4), (3,5), (4,78)] = [4,5,78].

-}

unZipRight :: [(Int,Int)] -> [Int]
unZipRight [ ] = [ ]
unZipRight ((a,b):xs) = b : unZipRight xs

unZipLeft :: [(Int, Int)] -> [Int]
unZipLeft [ ] = [ ]
unZipLeft ((a,b):xs) = a : unZipLeft xs

unzipH :: [(Int, Int)] -> ([Int],[Int])
unzipH [ ] = ([],[])
unzipH (x) = (unZipLeft x , unZipRight x)
