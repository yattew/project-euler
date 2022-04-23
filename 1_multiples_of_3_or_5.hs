sum_3_5 :: Int -> Int
sum_3_5 0 = 0
sum_3_5 n
    | n `mod` 3 == 0 || n `mod` 5 == 0 = n + sum_3_5 (n-1)
    | otherwise = sum_3_5 (n-1)
