

isPrime :: Int -> Bool
isPrime n = all (\b -> n `mod` b /= 0) [2 .. floor . sqrt $ fromIntegral n]

primeToN :: Int -> [Int]
primeToN n =
    filter (\a ->
        isPrime a
    ) [2..n]

-- prime n
-- get first n prime numbers
prime :: Int -> [Int]
prime n = take n (filter (\a -> isPrime a) [2..])