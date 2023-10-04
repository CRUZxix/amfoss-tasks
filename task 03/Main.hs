isPrime :: Integer -> Bool
isPrime n
    | n <= 1    = False
    | otherwise = not $ any (\x -> n `mod` x == 0) [2..(floor . sqrt $ fromIntegral n)]

main :: IO ()
main = do
    putStrLn "Enter a number (n): "
    input <- getLine
    let n = read input :: Integer
    if n < 2
        then putStrLn "Prime numbers start from 2 and above."
        else do
            putStrLn $ "Prime numbers up to " ++ show n ++ ":"
            mapM_ print [x | x <- [2..n], isPrime x]
