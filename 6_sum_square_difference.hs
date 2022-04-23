range :: Int -> Int -> [Int]
range n m
  | n >= m = []
  | otherwise = n : range (n + 1) m


solution :: Int
solution = 
  let r = range 1 101
      a = sum r
      b = a*a
      c = sum (map (\x->x*x) r)
  in b - c