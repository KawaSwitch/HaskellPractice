module Main where

main :: IO ()
main = return ()

-- 簡単のため一旦型クラスの存在を忘れる
ni :: Int
ni = 2

-- 基本
--f1 :: (Int -> Int) -> Bool
f1 f = (f 2) < 2

-- f1よりレベルが高い
f2 :: (Int -> t) -> t
f2 f = f ni

-- 型クラスが必要なのでさらにレベルが高い
f3 :: (Num a, Ord b) => (a -> b) -> b -> Bool
f3 f x = (f 2) < x

-- 2倍するだけの関数
sample x = x * ni -- niはInt型だから帰るのはInt
sample_ x = x * 2 -- 2はNum型クラスだから帰るのはNum


-- 型宣言に合わせた関数定義の練習（入門編）
--s1 :: (Int -> Bool) -> Bool
s1 f = f ni == True

--s2 :: (Int -> Int) -> [Int]
s2 f = f ni : [ni]
--s2 f = f ni : [2,3,4] だと Num a => (Int -> a) -> [a]

--s3 :: Int -> (Int -> a) -> (a -> b) -> b
s3 x f y = y (f (x + ni))


-- 期末試験, 小テストの要求レベル
-- 使ってよい型クラスはEq,Num,Ordのみ
h1 :: Eq a => (a -> a) -> a -> Bool
h1 x y = (x y) == y

h2 :: Ord a => a -> (Bool -> a) -> Bool
h2 x y = x < (y False)

h3 :: (Bool -> a) -> (a, (Bool -> a))
h3 x = (x True, x)

--g1 :: Ord a => a -> (a -> Bool) -> Bool
g1 x f = True < (f x)

--g2 :: (Num a, Num b) => (a -> b) -> a -> b -> [b]
g2 f x y = [(f (x + 1)) + y]