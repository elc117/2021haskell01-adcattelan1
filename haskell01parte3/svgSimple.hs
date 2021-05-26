-- Prática 01 de Haskell - Parte 3
-- Nome: Anderson Dalmolin Cattelan

import Text.Printf

-- String inicial do SVG
-- Define a largura e a altura da imagem svg
-- Nesse caso a imagem possui tamanho: 500x500
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

-- Cria os circulos, de raio r, posicionando o centro dos mesmos nas cordenadas x e y
-- também define a cor e opacidade
svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
-- Função alterada para gerar nove círculos
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  -- As linhas abaixo criam circulos com caracteristicas diferentes
  (svgCircle 60 60 50 "rgb(10, 145, 32, 0.9)") ++ 
  (svgCircle 370 275 50 "rgb(250, 0, 0, 0.7)") ++
  (svgCircle 410 398 80 "rgb(0, 250, 0, 0.6)") ++
  (svgCircle 127 350 65 "rgb(105, 14, 30, 0.4)") ++
  (svgCircle 210 210 90 "rgb(217, 147, 198, 0.9)") ++
  (svgCircle 179 77 40 "rgb(146, 220, 241, 0.52)") ++
  (svgCircle 450 400 50 "rgb(212, 140, 117, 0.6)") ++ 
  (svgCircle 100 405 95 "rgb(120, 100, 230, 0.5)") ++
  (svgCircle 400 100 95 "rgb(198, 147, 132, 0.7)") ++
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
