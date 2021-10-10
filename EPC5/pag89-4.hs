productH :: [Int] -> Int
productH [ ] = 1
productH (x:xs) = x * productH xs

