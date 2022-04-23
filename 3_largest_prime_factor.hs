largestPrime :: Integer -> Integer -> Integer 
largestPrime x d
  | d * d > x = x
  | x `mod` d == 0 = largestPrime (x `div` d) d
  | otherwise = largestPrime x (d+1)