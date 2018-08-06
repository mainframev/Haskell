module Main where

(^^^) :: (Num a, Ord a) => a -> a -> a
(^^^) _ 0 = 1
(^^^) _ y | y < 0 = undefined
(^^^) x y = x *** (^^^) x (y-1)

main :: IO()
main = print $ 10 ^^^ 3
