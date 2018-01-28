-- fibo n
-- get first n fibonacci numbers
fibo :: Int -> [Int]
fibo 1 = [1]
fibo 2 = [2, 1]
fibo n = let (a:b:t) = fibo $ n-1 in a+b:a:b:t


-- fiboToN
-- list of fibonaci numbers to limit n
fiboLimit :: Int -> Int -> [Int] -> [Int]
fiboLimit n a (x:xs) =  let new = a+x in if a > n then x:xs else fiboLimit n new (a:x:xs)

fiboToN :: Int -> [Int]
fiboToN n = fiboLimit n 2 [1]