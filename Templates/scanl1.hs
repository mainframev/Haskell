module Main where

scanl1' :: (a -> a -> a) -> [a] -> [a]
scanl1' _ [] = []
scanl1' _ [x] = [x]
scanl1' f (x:y:zs) = x : scanl1' f (f x y : zs)

main :: IO()
main = print $ scanl1' (+) [1..5]
