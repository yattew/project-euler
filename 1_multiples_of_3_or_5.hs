-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

-- Find the sum of all the multiples of 3 or 5 below 1000.


sum_3_5 :: Int -> Int
sum_3_5 0 = 0
sum_3_5 n
    | n `mod` 3 == 0 || n `mod` 5 == 0 = n + sum_3_5 (n-1)
    | otherwise = sum_3_5 (n-1)
