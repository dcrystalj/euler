triangelNum :: Int -> Int
triangelNum n = foldl (\acc x -> acc+x) 0 [1..n]

folder :: ((Either b c, [Int]) -> Int -> (Either b c, [Int])) -> (Either b c, [Int]) -> [Int] -> (Either b c, [Int])
folder f acc []        = acc
folder f (Left a, r) _ = (Left a, r)
folder f acc (x:xs)      = folder f (f acc x) xs

abc = last $ snd $
    folder (\(Right acc, result) l ->
        let a = acc + l in
        if (foldl (\acc b -> if a `mod` b == 0 then acc + 1 else acc) 0 [2.. div a 2]) >= 499 then (Left a, a:result)
        else (Right a, result)
    ) (Right 0, []) [1..]



--sum digit by digit 2 lists of same size
summer :: Int -> [Int] -> [Int] -> [Int]
summer a [] [] = if a == 1 then [a] else []
summer s (x:xs) (y:ys) =
    let z = x+y+s in
    if z > 9 then (summer 1 xs ys) ++ [(z-10)]
    else (summer 0 xs ys) ++ [z]

digitSum a b = summer 0 (reverse a) (reverse b)