-- Prática 01 de Haskell - Parte 2
-- Nome: Anderson Dalmolin Cattelan

import Haskell01parte1
import Haskell01quickstart

itemize :: [String] -> [String]
itemize x = map htmlItem x

onlyVowels :: String -> String
onlyVowels x = filter isVowel x

onlyElderly :: [Int] -> [Int]
onlyElderly x = filter isElderly x
--onlyElderly x = filter (>65) x

onlyLongWords :: [String] -> [String]
onlyLongWords x = filter isLongWord x

onlyEven :: [Int] -> [Int]
onlyEven x = filter isEven x

between60and80 :: Int -> Bool
between60and80 x = if x > 59 && x < 81 then True else False

onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 x = filter between60and80 x

isSpace :: Char -> Bool
isSpace x = if x == ' ' then True else False

countSpaces :: String -> Int
countSpaces x = length (filter isSpace x)

calcAreas :: [Float] -> [Float]
calcAreas x = map circleArea x

charFound :: Char -> String -> Bool
charFound x y = if (length (filter (== x) y)) > 0 then True else False