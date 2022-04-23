evenFib :: Int -> Int -> Int
evenFib n m
  | n > 4000000 = 0
  | even $ n + m = n + m + evenFib (n + m) n
  | otherwise = evenFib (n + m) n