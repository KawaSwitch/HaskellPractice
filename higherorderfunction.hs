module Main where

main :: IO ()
main = return ()

-- 簡単のため一旦型クラスの存在を忘れる
ni :: Int
ni = 2

-- 基本
f1 :: (Int -> Int) -> Bool
f1 f = (f 2) < 2

-- f1よりレベルが高い
f2 :: (Int -> t) -> t
f2 f = f ni

-- 型クラスが必要なのでさらにレベルが高い
f3 :: (Num a, Ord b) => (a -> b) -> b -> Bool
f3 f x = (f 2) < x

-- 2倍するだけの関数
sample x = x * ni -- niはInt型だから帰るのはInt
sample_ x = x * 2 -- 2はNum型クラスだから帰るのはNummodule Main where