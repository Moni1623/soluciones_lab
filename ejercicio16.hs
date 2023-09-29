import Data.Char

-- 16. Define una función que convierta a mayúsculas la
--     primera letra de cada palabra, y las demás letras
--     las ponga en minúsculas.
-- |   capitaliza "hOLa mundo!" = "Hola Mundo!"

capitalizar1 [] = []
capitalizar1 (s:x:xs) = if s == ' ' then s : capitalizar1 (toUpper x : map toLower xs) else s : capitalizar1 (x : map toLower xs)
capitalizar1 (x:xs) = x : xs
capitalizar2 (x:xs) = toUpper x : xs
capitalizar a = capitalizar2 (capitalizar1 a)
