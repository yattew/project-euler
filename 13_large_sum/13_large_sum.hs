import Data.Char (digitToInt)

getLinesFromFile :: FilePath -> IO [String]
getLinesFromFile file =
  do
    fileContent <- readFile file
    let res = words [if x == '\n' then ' ' else x | x <- fileContent]
    return res

main :: IO ()
main = do
  numbers <- getLinesFromFile "13_large_sum.txt"
  let result = sum $ map (\x -> read x::Integer) numbers
  putStrLn $take 10 (show result)
