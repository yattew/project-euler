range :: Int -> Int -> [Int]
range n m
  | n >= m = []
  | otherwise = n : range (n + 1) m

arr20 :: [Int]
arr20 = range 2 21

primeFactors :: Int -> Int -> [Int]
primeFactors x n
  | x <= n = [x] 
  | x `mod` n == 0 = n : primeFactors (x `div` n) n
  | otherwise = primeFactors x (n + 1)

remove :: Int -> [Int] -> [Int]
remove _ [] = []
remove y (x : xs)
  | y == x = xs
  | otherwise = x : remove y xs

mergePrimes :: [Int] -> [Int] -> [Int]
mergePrimes [] [] = []
mergePrimes (x : xs) [] = x : mergePrimes [] xs
mergePrimes [] (x : xs) = x : mergePrimes [] xs
mergePrimes (x1 : xs1) xs2 = 
  x1 : mergePrimes xs1 (remove x1 xs2)

addPrimeFactors :: Int -> [Int] -> [Int]
addPrimeFactors x = mergePrimes (primeFactors x 2)

allPrimeFactors :: [Int] -> [Int] -> [Int]
allPrimeFactors [] acc = acc
allPrimeFactors (x : xs) acc = allPrimeFactors xs (addPrimeFactors x acc)

solution :: Int
solution = product $ allPrimeFactors arr20 []
