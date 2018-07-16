module Main where

main :: IO ()
main = return ()

ni :: Int
ni = 2

f1 :: (Int -> Int) -> Bool
f1 f = (f 2) < 2

f2 :: (Int -> t) -> t
f2 f = f ni

f3 :: (Num a, Ord b) => (a -> b) -> b -> Bool
f3 f x = (f 2) < x