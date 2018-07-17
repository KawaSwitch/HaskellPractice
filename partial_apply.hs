module Main where

main :: IO ()
main = return ()

x :: Int
x = 4

foo :: Int -> Int -> Int
foo x y = x + y
-- Int -> (Int -> Int)と等価


-- arityと実引数の数の違い
f :: (a -> b -> Bool -> c) -> a -> b -> (c, Bool -> c)
f g x y = (g x y True, g x y)

--   :t even
   
-- even :: Integral a => a -> Bool
--   filter even [1..19]
   
-- => [2,4,6,8,10,12,14,16,18]   :t odd
   
-- odd :: Integral a => a -> Bool
-- => [2,4,6,8,10,12,14,16,18]   filter odd [1..10
   
-- <interactive>:11:18: error:
--     parse error (possibly incorrect indentation or mismatched brackets)
--   filter odd [1..10]
   
-- => [1,3,5,7,9]   