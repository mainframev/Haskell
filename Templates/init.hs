module Main where

init' :: [a] -> [a]
init' [x] = []
init' (x:xs) = x : init' xs

main = print $ init' [1,2,3,4,5]
