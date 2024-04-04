inverte :: [a] -> [a]
inverte = foldl (\x y -> y:x) []
ex1 = [1, 2, 3]
main = print (inverte ex1)