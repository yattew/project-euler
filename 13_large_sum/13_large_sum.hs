import Data.Char (digitToInt)

getLinesFromFile :: FilePath -> IO [String]
getLinesFromFile file =
  do
    fileContent <- readFile file
    let res = words [if x == '\n' then ' ' else x | x <- fileContent]
    return res

sumAll :: [String] -> Integer
sumAll = foldl (\acc x -> acc + (read x :: Integer)) 1

main :: IO ()
main = do
  numbers <- getLinesFromFile "13_large_sum.txt"
  let result = sumAll numbers
  putStrLn $take 10 (show result)
