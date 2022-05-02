divisibleBy :: Int -> [Int] -> Bool
divisibleBy n = any (\x -> n `mod` x == 0)

findPrimes :: [Int] -> Int -> Int -> Int
findPrimes primes n currN
  | currN `divisibleBy` primes = findPrimes primes n (currN + 1)
  | otherwise =
    if n <= 1
      then currN
      else findPrimes (currN : primes) (n -1) (currN + 1)

main :: IO ()
main = do
  let res = findPrimes [] 10001 2
  print res