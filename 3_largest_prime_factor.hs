-- The prime factors of 13195 are 5, 7, 13 and 29.

-- What is the largest prime factor of the number 600851475143 ?


-- the number is x and always put d = 2
largestPrime :: Integer -> Integer -> Integer 
largestPrime x d
  | d * d > x = x
  | x `mod` d == 0 = largestPrime (x `div` d) d
  | otherwise = largestPrime x (d+1)