-- Prática 01 de Haskell - Parte 1
-- Nome: Anderson Dalmolin Cattelan

module Haskell01parte1
( sumSquares
, circleArea
, age
, isElderly
, htmlItem
, startsWithA
, isVerb
, isVowel
, hasEqHeads
, isVowel2
) where

sumSquares :: Int -> Int -> Int
sumSquares x y = x^2 + y^2

circleArea :: Float -> Float
circleArea x = 3.1415 * x^2

age :: Int -> Int -> Int
age x y = y - x

isElderly :: Int -> Bool
isElderly x = if x > 65 then True else False

htmlItem :: String -> String
htmlItem x = "<li>" ++ x ++ "</li>"

startsWithA :: String -> Bool
startsWithA x = if head x == 'A' || head x == 'a' then True else False

isVerb :: String -> Bool
isVerb x = if last x == 'R' || last x == 'r' then True else False

isVowel :: Char -> Bool
isVowel x = if x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u' then True else False

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = if head x == head y then True else False

isVowel2 :: Char -> Bool
isVowel2 x = elem x ['a','e','i','o','u', 'A', 'E', 'I', 'O', 'U']